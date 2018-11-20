FROM ruby:2.5
ENV LANG C.UTF-8

RUN apt-get update -qq && \
      apt-get install -y build-essential \
      libpq-dev \
      nodejs

RUN mkdir /workspace
WORKDIR /workspace

COPY Gemfile /workspace/Gemfile
COPY Gemfile.lock /workspace/Gemfile.lock
RUN bundle install
COPY . /workspace
