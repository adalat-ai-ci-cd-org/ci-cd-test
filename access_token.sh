INSTALLATION_ID=62502394  # Replace with your actual Installation ID
JWT_TOKEN="eyJhbGciOiJSUzI1NiJ9.eyJpYXQiOjE3NDE3NzQ3NDgsImV4cCI6MTc0MTc3NTQwOCwiaXNzIjoxMTcyNDczfQ.jPQXfGsEql2wl3j6i7zxiFtBxyqi4rLVLAXA3B3XwQB3jhz2H4WmMhdrQ87uw83LzjNchy_08DBF-i2ia2RCgDrUisgN6cQKwCwGZxuvjKNntAWStbuX7KCpkUqc0LCEugdMQRgoEEo3D4LUnGnoDVHdtg2k9DdHIxGKIvpDBjLIZa7GEnh-iVmaDNSNWxZ4Atc423Ode5zz9bChnS_dtUMH3iqfKH42LUwXI4kttof7P-QfDPl60Nrsh4v6qKPuOVHT7aoFp8nsq3W6T8p_--NcpZeUs6mCjLp1Oh4h1qGNsZQJtfB-Cvo0faaJspPngWzz90OOje7w6QoqynMyOQ"  # Replace this with the token generated in Step 3

curl -s -X POST -H "Authorization: Bearer $JWT_TOKEN" -H "Accept: application/vnd.github+json" \
  "https://api.github.com/app/installations/${INSTALLATION_ID}/access_tokens"
