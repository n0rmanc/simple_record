FROM rails:4.2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN gem install pg
RUN mkdir /temperature_monitor
WORKDIR /temperature_monitor
ADD Gemfile /temperature_monitor/Gemfile
ADD Gemfile.lock /temperature_monitor/Gemfile.lock

ENV BUNDLE_PATH /box

# RUN bundle check || bundle install
ADD . /temperature_monitor/

CMD ./script/start
