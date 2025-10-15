# Use the official Ruby 3.3.5 image
FROM ruby:3.3.5

# Install system dependencies in one layer
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    postgresql-client \
    git \
    curl \
    wget \
    vim \
    nano \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# Install GitHub CLI
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
    && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && apt-get update \
    && apt-get install -y gh \
    && apt-get clean

# Install Node.js and Yarn in one layer
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn \
    && apt-get clean

# Install Bundler
RUN gem install bundler -v 2.6.6

# Set working directory
WORKDIR /workspace

# Copy only Gemfile first (for better Docker layer caching)
COPY app/Gemfile* ./app/

# Install gems (this layer will be cached if Gemfile doesn't change)
RUN cd app && bundle config set --local deployment 'false' \
    && bundle config set --local path '/usr/local/bundle' \
    && bundle install --jobs=4 --retry=3

# Create non-root user
RUN useradd -m -s /bin/bash developer && \
    chown -R developer:developer /workspace

# Set environment variables
ENV RAILS_ENV=development
ENV BUNDLE_PATH=/usr/local/bundle

# Expose port
EXPOSE 3000

# Switch to non-root user
USER developer

# Default command
CMD ["bash"]
