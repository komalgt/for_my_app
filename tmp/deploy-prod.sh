#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "Starting production deployment..."

# Build your project (typically a repeat for safety)
echo "Building the project..."
npm install --production
npm run build

# Run final tests (highly recommended before deploying)
echo "Running tests..."
npm test

# Deploy to production (replace with your actual deployment command/protocol)
echo "Deploying to production environment..."
curl -X POST https://api.prod.example.com/deploy \
     -H "Authorization: Bearer $PROD_API_KEY" \
     -F "package=@./build/package.zip"

# Log deployment completion
echo "Production deployment completed successfully!"

exit 0
