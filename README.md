# api-pridepocket

## purpose

Backend for pridepocket

## dev setup:

```bash
   brew install postgres
   pg_ctl -D /usr/local/var/postgres start && brew services start postgresql
   psql postgres
     CREATE ROLE pridepocket_test WITH LOGIN PASSWORD 'pridepocket_test_pass'
     ALTER ROLE pridepocket_test CREATEDB;  
     
     CREATE ROLE pridepocket_dev WITH LOGIN PASSWORD 'pridepocket_dev_pass';
     ALTER ROLE pridepocket_dev CREATEDB;  
   
   rake db:create:all
   rake db:migrate:all
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

 
