FROM ruby:2.6-alpine

COPY . .

WORKDIR /app

RUN apk update && apk add bash git

RUN gem install bundler

RUN bundle install
