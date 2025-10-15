# Rails API Application

This is the Rails API application for the debugging workshop. It's configured as an API-only Rails app with PostgreSQL and all the tools needed for learning Rails development.

## 🏗️ Architecture

- **Rails 7.2.2.2** (API-only mode)
- **PostgreSQL** database
- **JBuilder** for JSON responses
- **CORS** enabled for frontend integration
- **HashiCorp-style** gem management

## 🚀 Quick Start

```bash
# Install dependencies
bundle install

# Set up database
bundle exec rails db:create db:migrate

# Start server
bundle exec rails server
```

## 📦 Key Gems

- `jbuilder` - JSON API building
- `rack-cors` - CORS handling
- `bcrypt` - Password hashing
- `strong_migrations` - Safe database migrations
- `rspec-rails` - Testing framework
- `rubocop` - Code quality

## 🧪 Testing

```bash
bundle exec rspec
bundle exec rubocop
```

See the main [README](../README.md) for complete documentation.
