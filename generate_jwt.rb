APP_ID=1172473
INSTALLATION_ID=62382783

# Convert GitHub Secret to properly formatted private key
echo "${{ secrets.CI_CD_SECRET }}" | awk '{printf "%s\\n", $0}' > private-key.pem

# Verify the key format
echo "Private Key Content:"
cat private-key.pem

# Generate JWT token using Ruby
jwt=$(ruby <<EOF
require 'openssl'
require 'jwt'
private_pem = File.read("private-key.pem")
private_key = OpenSSL::PKey::RSA.new(private_pem)
payload = { iat: Time.now.to_i - 60, exp: Time.now.to_i + (10 * 60), iss: ${APP_ID} }
token = JWT.encode(payload, private_key, 'RS256')
puts token
EOF
)

echo "✅ JWT Token Generated"