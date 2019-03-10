# Chrome as a service for Rails testing example app

example app for https://medium.com/@retrorubies/chrome-as-a-service-for-rails-testing-b1a45e70fec1

## install

```bash
bundle install

```

## run system tests

```
docker-compose run --rm --use-aliases web bin/rails test:system
```
