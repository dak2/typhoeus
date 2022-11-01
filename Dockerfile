FROM --platform=linux/amd64 ruby:3.1-buster
RUN apt-get update && apt-get install -y git && gem install bundler
RUN mkdir /app
WORKDIR /app
COPY . /app
COPY Gemfile /app/Gemfile
COPY typhoeus.gemspec /app/typhoeus.gemspec
RUN bundle install
COPY . /app
