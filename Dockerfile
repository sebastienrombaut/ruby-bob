FROM ruby:2.5.0
MAINTAINER Guillaume FAURE-DUMONT
RUN apt-get update -qq && apt-get install -y build-essential
RUN echo 'gem: --no-document' > /root/.gemrc

RUN mkdir /bob
WORKDIR /bob

RUN gem install minitest

ADD . /bob
