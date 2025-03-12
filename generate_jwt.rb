require 'openssl'
require 'jwt'
private_pem = File.read("adalat-ci-cd-app.pem").strip # Removes extra newlines

private_key = OpenSSL::PKey::RSA.new(private_pem)
payload = { iat: Time.now.to_i - 60, exp: Time.now.to_i + (10 * 60), iss: 1172473 }
token = JWT.encode(payload, private_key, 'RS256')
puts token