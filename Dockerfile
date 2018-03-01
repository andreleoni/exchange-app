FROM ruby:2.3-slim

MAINTAINER andreluizleoni@gmail.com

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev

ENV INSTALL_PATH /exchange-app
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY Gemfile Gemfile.lock ./

RUN gem install bundler

RUN bundle install --system

COPY . .

CMD puma -C config/puma.rb
