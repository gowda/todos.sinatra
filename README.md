# todos.sinatra
[![Build Status](https://travis-ci.com/gowda/todos.sinatra.svg?branch=master)](https://travis-ci.com/gowda/todos.sinatra)
![](https://github.com/gowda/todos.sinatra/workflows/verification/badge.svg)

[TodoMVC specification](https://github.com/tastejs/todomvc/blob/master/app-spec.md) implemented using [Sinatra](http://sinatrarb.com/)

## Run
### Migrate database
```bash
$ bundle exec db:migrate
```

### Seed database tables
```bash
$ bundle exec db:seed
```

### Server
```bash
$ bundle exec rackup
```

### Tests
```bash
$ bundle exec rspec
```
