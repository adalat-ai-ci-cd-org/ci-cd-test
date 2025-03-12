INSTALLATION_ID=62382783  # Replace with your actual Installation ID
JWT_TOKEN="eyJhbGciOiJSUzI1NiJ9.eyJpYXQiOjE3NDE3NzEwMzgsImV4cCI6MTc0MTc3MTY5OCwiaXNzIjoxMTcyNDczfQ.yRYT-tY634yET1lj4mN9uPy6mYYwkevVqtYGG09nB8xfwoaksd_pmfCS_CgICj0BqCjqDFKKFy6ehoFUgz6HoezSxuxG5Hkn3yHYhN7lxN4T-QaftL3Q08OxvQJ4m8ucl-HXSXSYij6Ru1ioRyvbf7wWCo_P7jGIYcEKbXwTwLOHbIr5oH0KjElqnrTHt_BLHHnThqpGxFzYVIpZIn3Bq43pRenjyLbBi596r4YV1dlFs_eoHd44REO0UPn3LOTgwIViBSDYcddM5cMayVFQhntxdJXEn9IZc6nqOyUyP4Rhl1bruK5r6spmTeO85oTSiMwqC9mnumLWd8PbJV2XcQ"  # Replace this with the token generated in Step 3

curl -X POST -H "Authorization: Bearer $JWT_TOKEN" -H "Accept: application/vnd.github+json" \
  "https://api.github.com/app/installations/${INSTALLATION_ID}/access_tokens"
