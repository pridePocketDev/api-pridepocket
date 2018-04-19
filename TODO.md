### Next to add:

- fix account creation via api
- fb account creation
- make sure that campaign permissions are respected
- custom endpoints - talk to front end dev
- front end wepay integration?
- edge cases, so many edge cases?


### Features to keep in mind

- Signup with email *or* facebook
- list all *public* campaigns (never list private campaigs- add a rails default scope to campaigns)

### Security and DDOS protection

- frontend - cloudflare?, point to frontend on s3?
- keep in mind- rails app- https only, no TLS downgrade (HSTS?), add cache-buster headers
- admin panel 2factor? think more about risk handling for user data
- rails secret key handling - currently handled by heroku
- S3 key for image upload heroku config:add S3_KEY=<key_string>
- don't use gravitar or profile images for campaign hosts

### Monitoring and alerting

- set up monitoring and alerting- https://elements.heroku.com/addons/appsignal pagerduty/VictorOps?
- hook up monitoring/alerting to the security@pridepocket.org email address

### User support features

- set up https://github.com/sferik/rails_admin/wiki/Base-configuration
- admin accounts for R&C - hardcode support user email addresses if TOTP isn't set up yet when we launch
- what permissions should dev accounts have? How can a dev account be identified?
- add paper_trail for model changes tracking - limit this usage to R&C probably

### resources

- https://devcenter.heroku.com/articles/getting-started-with-rails5#database
- https://www.codementor.io/engineerapart/getting-started-with-postgresql-on-mac-osx-are8jcopb#i-introduction
- https://secret-ocean-86137.herokuapp.com/ git push heroku master
- heroku run rake db:migrate db:seed
- https://github.com/sferik/rails_admin/wiki/Devise
- http://www.carlosramireziii.com/how-to-add-active-admin-to-a-rails-5-api-application.html
































