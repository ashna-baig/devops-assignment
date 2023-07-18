# Use the official Ruby image as the base image
FROM ruby:3.2.2

# Install system dependencies
RUN apt-get update -qq && apt-get install -y nodejs npm

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install gems specified in the Gemfile
RUN gem install bundler
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000, which is the default port used by Rails server
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
