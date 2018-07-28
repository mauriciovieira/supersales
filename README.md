# supersales

[![Build Status](https://travis-ci.org/mauriciovieira/supersales.svg?branch=master)](https://travis-ci.org/mauriciovieira/supersales)

Simple rails 5.2 application using rails_admin, devise, and native rails test setup.

This project is an implementation of [Criando um sistema administrativo completo com rails admin](https://onebitcode.com/course/criando-um-sistema-administrativo-completo-com-rails-admin/) (in Brazilian Portuguese) tutorial.

## Dependencies

* rails 5.2
* postgresql
* rails_admin
* Devise
  * devise-bootstrapped
* cancancan3
* high_voltage
* active_record_upsert

On macOS, run

```bash
brew bundle
```

## Running locally

```bash
bundle install
bin/rails db:setup db:seed
bin/rails s
```

### Tests
```bash
bin/rails test:system
```

## Running on docker

TODO

### Tests

```bash
docker-compose -f docker-compose.test.yml build
docker-compose -f docker-compose.test.yml run --rm app sh -c "./docker/wait-for-services.sh && bundle exec rails db:create test:system"
```

## Author

| ![Mauricio Vieira](https://avatars2.githubusercontent.com/u/95258?s=150&v=4)|
|:---------------------:|
|  [Mauricio Vieira](https://github.com/mauriciovieira/)   |

+ <https://mauriciovieira.net>
+ <https://twitter.com/mauriciovieira>