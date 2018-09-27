FROM ruby:2.5.1

RUN apt-get update \
    && apt-get -y install nodejs

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN bundle install

COPY .  .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
