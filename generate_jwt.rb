require 'openssl'
require 'jwt'

private_pem = ENV['CI_CD_SECRET']
if private_pem.nil? || private_pem.empty?
  puts "❌ ERROR: Private key is missing!"
  exit 1
end

begin
    # Ensure the private key retains proper newlines
    private_key = OpenSSL::PKey::RSA.new(private_pem.gsub("\\n", "\n"))

    # Generate JWT Token
    app_id = 1172473
    payload = { iat: Time.now.to_i - 60, exp: Time.now.to_i + (10 * 60), iss: app_id }
    jwt_token = JWT.encode(payload, private_key, 'RS256')

    puts "✅ JWT Token Generated: #{jwt_token}"
    rescue OpenSSL::PKey::RSAError => e
    puts "❌ OpenSSL Error: #{e.message}"
    exit 1
end
