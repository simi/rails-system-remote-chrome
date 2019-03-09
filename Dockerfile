FROM ruby:2.5.3-alpine
RUN mkdir /app
WORKDIR /app

RUN apk add --update tzdata

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN apk add --no-cache --virtual .app-builddeps build-base ruby-dev
RUN bundle install
RUN apk del .app-builddeps

COPY . /app

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
