#!/bin/bash

set -e  # Stop on error

echo "Starting development deployment..."

# Example: Build your project (adjust as needed)
echo "Building the project..."
npm install
npm run build

# Example: Run tests (optional)
echo "Running tests..."
npm test

# Example: Deploy to dev server/API (adjust endpoint/command as needed)
echo "Deploying to development environment..."
curl -X POST https://api.dev.example.com/deploy \
     -H "Authorization: Bearer $DEV_API_KEY" \
     -F "package=@./build/package.zip"

# Log deployment output
echo "Deployment to development completed successfully!"

exit 0
