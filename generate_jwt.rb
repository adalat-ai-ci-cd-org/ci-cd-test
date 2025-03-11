require 'openssl'
require 'jwt'

# Replace with your GitHub App ID
app_id = 1172473  # Example: 1172473

# Load the private key from the .pem file
private_pem = File.read("adalat-ci-cd-app.pem")  # Ensure this is the correct path
private_key = OpenSSL::PKey::RSA.new(private_pem)

# JWT payload with issued at and expiration times
payload = {
  iat: Time.now.to_i - 60,   # Issued at time (1 min in the past for safety)
  exp: Time.now.to_i + 600,  # Expiration time (10 minutes from now)
  iss: app_id                # GitHub App ID
}

# Generate JWT token
jwt = JWT.encode(payload, private_key, "RS256")

# Print JWT token
puts jwt
