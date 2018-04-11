- add ci build
- deploy somewhere - heroku? https://devcenter.heroku.com/articles/getting-started-with-rails5#local-workstation-setup
- set up Devise
- set up activeadmin
- create models and controllers with basic tests
- add paper_trail
- readme setup- completed features
- make sure security issue reporting is set up
- developer flow with multiple developers- push to branch for incomplete work, never force-push to master branch.
- secrets tracking - need a strategy


Features to keep in mind

- Signup with email *or* facebook
- list all public campaigns


frontend - cloudflare, point to frontend on s3
keep in mind- rails app- https only, no TLS downgrade (HSTS?), add cache-buster headers
activeadmin 2factor? think more about risk handling


secrets management:
- admin accounts for rachel&cortney
- dev accounts
- database passwords heroku config:set YOUR_DATABASE_PASSWORD=foo
- rails secret key
- S3 key for image upload heroku config:add S3_KEY=<key_string>
- ??

rails generate scaffold CampaignHost name:string 