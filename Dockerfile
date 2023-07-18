# Base image
FROM ruby:3.2.2

# Set working directory
WORKDIR /app

# Copy the Gemfile and Gemfile.lock files to the working directory
COPY Gemfile Gemfile.lock ./

# Install project dependencies
RUN apt-get update -qq && apt-get install -y nodejs npm

# Copy the project files to the working directory
COPY . /app

# Run database migrations and precompile assets
RUN gem install bundler
RUN bundle exec rails db:migrate && bundle exec rails assets:precompile

# Expose the default Rails server port
EXPOSE 3000

# Start the Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
