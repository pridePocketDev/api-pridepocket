# api-pridepocket

[![Build Status](https://travis-ci.org/pridePocketDev/api-pridepocket.svg?branch=master)](https://travis-ci.org/pridePocketDev/api-pridepocket)
[![Code Climate](https://codeclimate.com/github/pridePocketDev/api-pridepocket/badges/gpa.svg)](https://codeclimate.com/github/pridePocketDev/api-pridepocket)
[![Test Coverage](https://codeclimate.com/github/pridePocketDev/api-pridepocket/badges/coverage.svg)](https://codeclimate.com/github/pridePocketDev/api-pridepocket/coverage)
[![Dependency Status](https://gemnasium.com/pridePocketDev/api-pridepocket.svg)](https://gemnasium.com/pridePocketDev/api-pridepocket)
[![Hakiri security](https://hakiri.io/github/pridePocketDev/api-pridepocket/master.svg)](https://hakiri.io/github/pridePocketDev/api-pridepocket/master)

## purpose

Backend for pridepocket

## dev setup:

```bash
   # TODO setup script or docker or vm or something
   brew install postgres
   pg_ctl -D /usr/local/var/postgres start && brew services start postgresql
   psql postgres
     CREATE ROLE pridepocket_test WITH LOGIN PASSWORD 'pridepocket_test_pass'
     ALTER ROLE pridepocket_test CREATEDB;

     CREATE ROLE pridepocket_dev WITH LOGIN PASSWORD 'pridepocket_dev_pass';
     ALTER ROLE pridepocket_dev CREATEDB;

   rake db:create
   rake db:migrate
   rails server # launch server
```

## deployment

The plan is to deploy to heroku with cloudflare or similar for ddos protection

## usage examples:

none yet

## dev notes:

see all routes:

```bash
rails routes
```

check out seeds.rb for more setup- one of everything for local dev. Run using

```bash
rake db:seed
```

run server
```bash
rails server
open http://localhost:3000/ # default endpoint is all campaigns
```

