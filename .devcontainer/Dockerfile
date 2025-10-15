# Use the official Ruby 3.3.5 image
FROM ruby:3.3.5

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    postgresql-client \
    git \
    curl \
    wget \
    vim \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js (useful for Rails development)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# Install Yarn
RUN npm install -g yarn

# Install the latest compatible Bundler version
RUN gem install bundler -v 2.6.6

# Set the working directory
WORKDIR /workspace

# Copy Gemfile and Gemfile.lock (if it exists)
COPY app/Gemfile* ./

# Install gems
RUN bundle install

# Copy the rest of the application
COPY app/ ./

# Expose port 3000 for Rails server
EXPOSE 3000

# Set environment variables
ENV RAILS_ENV=development
ENV BUNDLE_PATH=/usr/local/bundle

# Create a non-root user
RUN useradd -m -s /bin/bash developer && \
    chown -R developer:developer /workspace
USER developer

# Default command
CMD ["bash"]
