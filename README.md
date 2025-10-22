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
