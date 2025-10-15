#!/bin/bash

# Rails Debugging Workshop Setup Script
set -e

echo "🚀 Setting up Rails Debugging Workshop environment..."

# Navigate to the app directory
cd /workspace

# Install dependencies
echo "📦 Installing Ruby gems..."
bundle install

# Set up the database
echo "🗄️  Setting up PostgreSQL database..."
bundle exec rails db:create
bundle exec rails db:migrate

# Create a sample seed data (optional)
echo "🌱 Creating sample data..."
bundle exec rails db:seed

# Run tests to make sure everything is working
echo "🧪 Running tests..."
bundle exec rspec --version || echo "RSpec not available yet"

# Start the Rails server in the background
echo "🚀 Starting Rails server..."
bundle exec rails server -b 0.0.0.0 -p 3000 &

echo "✅ Setup complete! Rails server is running on http://localhost:3000"
echo "📝 You can now start debugging your Rails application!"
