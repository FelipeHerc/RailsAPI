FROM ruby:2.6
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /api
WORKDIR /api
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY . /api
