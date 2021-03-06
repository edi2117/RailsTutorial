FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y build-essential

#for JS runtime
RUN apt-get install -y nodejs

#for postgres
RUN apt-get install -y libpq-dev

ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME

EXPOSE 8080
