FROM rails:4.2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN gem install pg
RUN mkdir /backend
WORKDIR /backend
ADD Gemfile /backend/Gemfile
ADD Gemfile.lock /backend/Gemfile.lock

ENV BUNDLE_PATH /box

# RUN bundle check || bundle install
ADD . /backend/

CMD ./script/start
