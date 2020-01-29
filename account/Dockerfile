FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
 && rm -rf /var/lib/apt/lists/*

RUN gem install bundler

ENV APP_ROOT /myapp
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install

COPY . $APP_ROOT