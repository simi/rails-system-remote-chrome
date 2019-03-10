# Chrome as a service for Rails testing example app

example app for https://medium.com/@retrorubies/chrome-as-a-service-for-rails-testing-b1a45e70fec1

you can check also [alternative version](https://github.com/simi/rails-system-remote-chrome/blob/zalenium/docker-compose.yml) using [Zalenium](https://opensource.zalando.com/zalenium/) instead of Selenium Grid

## install

```bash
bundle install

```

## run system tests

```
docker-compose run --rm --use-aliases web bin/rails test:system
```
