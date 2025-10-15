# Rails Debugging Workshop

A comprehensive Rails API application designed for debugging workshops and learning Rails development best practices. This repository includes everything you need to get started with Rails debugging, testing, and development.

## 🚀 Quick Start with Codespaces

**Recommended**: Open this repository in GitHub Codespaces for a pre-configured development environment.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/rails-debugging-workshop)

### What's Included in Codespaces

- **Ruby 3.3.5** with **Bundler 2.6.6**
- **Rails 7.2.2.2** (API-only mode)
- **PostgreSQL 15** database
- **VS Code** with Ruby extensions
- **All development tools** pre-installed

## 🏗️ Project Structure

```
rails-debugging-workshop/
├── .devcontainer/          # Codespace configuration
│   ├── Dockerfile         # Ruby 3.3.5 + tools
│   ├── devcontainer.json  # VS Code settings
│   ├── docker-compose.yml # PostgreSQL service
│   └── setup.sh          # Automated setup
├── app/                   # Rails application
│   ├── app/              # Controllers, models, views
│   ├── config/           # Rails configuration
│   ├── Gemfile           # HashiCorp-style gem management
│   └── README.md         # Rails app documentation
└── README.md             # This file
```

## 🛠️ Local Development

### Prerequisites

- Ruby 3.3.5
- Bundler 2.6.6+
- PostgreSQL 15+
- Node.js 18+ (optional)

### Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd rails-debugging-workshop
   ```

2. **Install dependencies**
   ```bash
   cd app
   bundle install
   ```

3. **Set up the database**
   ```bash
   bundle exec rails db:create
   bundle exec rails db:migrate
   ```

4. **Start the server**
   ```bash
   bundle exec rails server
   ```

## 🎯 Workshop Features

### Rails API Development
- **API-only configuration** - No views, just JSON APIs
- **JBuilder** for structured JSON responses
- **CORS enabled** for frontend integration
- **PostgreSQL** for production-ready database

### Debugging Tools
- **Byebug** - Interactive debugging
- **Pry** - Enhanced REPL
- **Better Errors** - Beautiful error pages
- **Rails Console** - Database interaction

### Testing Framework
- **RSpec** - Comprehensive testing
- **Factory Bot** - Test data generation
- **Shoulda Matchers** - Rails-specific matchers
- **WebMock** - HTTP request mocking

### Code Quality
- **RuboCop** - Ruby style guide
- **Brakeman** - Security analysis
- **Bundler Audit** - Vulnerability scanning
- **Strong Migrations** - Safe database changes

## 📦 Key Gems

### Core Rails
- `rails` - Web framework (individual components)
- `pg` - PostgreSQL adapter
- `puma` - Web server
- `jbuilder` - JSON API building

### API & CORS
- `rack-cors` - Cross-origin resource sharing
- `bcrypt` - Password hashing
- `redis` - Caching and Action Cable

### Development & Testing
- `rspec-rails` - Testing framework
- `factory_bot_rails` - Test data generation
- `byebug` - Debugging
- `pry-rails` - Enhanced console

### Code Quality
- `rubocop` - Style guide enforcement
- `brakeman` - Security scanner
- `strong_migrations` - Safe migrations

## 🧪 Testing

```bash
# Run all tests
bundle exec rspec

# Run specific test file
bundle exec rspec spec/controllers/users_controller_spec.rb

# Run with coverage
COVERAGE=true bundle exec rspec

# Run tests in watch mode
bundle exec rspec --watch
```

## 🔍 Code Quality

```bash
# Run RuboCop
bundle exec rubocop

# Run Brakeman (security)
bundle exec brakeman

# Run Bundler audit
bundle exec bundle-audit

# Fix RuboCop issues
bundle exec rubocop -a
```

## 🐛 Debugging

### Interactive Debugging
```ruby
# Add breakpoints in your code
byebug
binding.pry

# In Rails console
rails console
```

### Common Debugging Commands
```bash
# Check routes
bundle exec rails routes

# Check database schema
bundle exec rails db:schema:dump

# Check pending migrations
bundle exec rails db:migrate:status

# Check logs
tail -f log/development.log
```

## 📚 Learning Resources

This workshop covers:

- **Rails API development** - Building JSON APIs
- **Debugging techniques** - Finding and fixing issues
- **Testing strategies** - Comprehensive test coverage
- **Code quality practices** - Maintaining clean code
- **Database optimization** - Efficient queries
- **Performance monitoring** - Identifying bottlenecks

## 🚀 Available Commands

```bash
# Generate new resources
bundle exec rails generate controller Api::V1::Users
bundle exec rails generate model User name:string email:string

# Database operations
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec rails db:rollback

# Console and server
bundle exec rails console
bundle exec rails server
bundle exec rails server -p 3001  # Different port
```

## 🌐 API Endpoints

The application is configured as an API-only Rails app. Example endpoints:

```bash
# Health check
GET /up

# API endpoints (when implemented)
GET /api/v1/users
POST /api/v1/users
GET /api/v1/users/:id
```

## 🔧 Configuration

### Environment Variables
- `RAILS_ENV` - Rails environment (development/test/production)
- `DATABASE_URL` - PostgreSQL connection string
- `BUNDLE_PATH` - Gem installation path

### Database Configuration
- **Development**: `workshop_development`
- **Test**: `workshop_test`
- **Production**: `workshop_production`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Add tests for new functionality
5. Run the test suite (`bundle exec rspec`)
6. Run code quality checks (`bundle exec rubocop`)
7. Commit your changes (`git commit -m 'Add amazing feature'`)
8. Push to the branch (`git push origin feature/amazing-feature`)
9. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Troubleshooting

### Common Issues

**Bundler version issues:**
```bash
gem install bundler -v 2.6.6
bundle install
```

**Database connection issues:**
```bash
# Check PostgreSQL is running
brew services start postgresql  # macOS
sudo service postgresql start   # Linux

# Reset database
bundle exec rails db:drop db:create db:migrate
```

**Port already in use:**
```bash
# Kill process on port 3000
lsof -ti:3000 | xargs kill -9

# Or use different port
bundle exec rails server -p 3001
```

## 📞 Support

If you encounter any issues:

1. Check the [troubleshooting section](#-troubleshooting)
2. Look at the [GitHub Issues](https://github.com/your-username/rails-debugging-workshop/issues)
3. Create a new issue with detailed information

---

**Happy debugging!** 🎉
