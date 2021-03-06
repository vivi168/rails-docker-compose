FROM ruby:2.5
ENV LANG C.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update -qq && \
      apt-get install -y build-essential \
      libpq-dev \
      nodejs

RUN mkdir /workspace
WORKDIR /workspace

COPY myapp /workspace
RUN bundle install
