### Next to add:

- Make account creation and login via api work
- account creation (failing): curl -XPOST -v -H 'Content-Type: application/json http://localhost:3000/users -d '{"email": "3@example.com", "password": "password" }'
- account login to rails-console-created-user (failing): curl -XPOST -v -H 'Content-Type: application/json http://localhost:3000/users/sign_in -d '{"email": "3@example.com", "password": "password" }'
- create models and controllers with basic tests
- integrate with wepay! https://github.com/wepay/Ruby-SDK
- fb account creation / linkage
- edge cases, so many edge cases


### Features to keep in mind

- Signup with email *or* facebook
- list all *public* campaigns (never list private campaigs- add a rails default scope to campaigns)

### Security and DDOS protection

- frontend - cloudflare?, point to frontend on s3?
- keep in mind- rails app- https only, no TLS downgrade (HSTS?), add cache-buster headers
- activeadmin 2factor? think more about risk handling for user data
- rails secret key handling - currently handled by heroku
- S3 key for image upload heroku config:add S3_KEY=<key_string>
- don't use gravitar or profile images for campaign hosts

### Monitoring and alerting

- set up monitoring and alerting- https://elements.heroku.com/addons/appsignal pagerduty/VictorOps?
- hook up monitoring/alerting to the security@pridepocket.org email address

### User support features

- set up activeadmin
- admin accounts for R&C - hardcode activeadmin user email addresses if TOTP isn't set up yet when we launch
- what permissions should dev accounts have? How can a dev account be identified?
- add paper_trail for model changes tracking - limit this usage to R&C probably


### rough plan for db schema:

(all tables have id, created_at, updated_at)
- users (managed by devise)
- wepay_accounts: wepay_token, ???
- campaign_hosts: user_id(foriegn key), self_description, profile_image_url, wepay_account_id(foreign key)
- campaign_donors: user_id(foreign key), name, ???
- campaigns: campaign_host_id(foreign key), goal_amount_cents, welcome_message, thank_you_note, launched(timestamp), start_at, end_at, description, privacy_level(private, link-only, public)
- campaign_photos: campaign_id(foreign_key), url(hosted on s3 probably if we allow uploads - v1 use imgur or something?)
- campaign_donations: campaign_id, campaign_donor_id, amount_cents, wepay_transaction_token
- campaign_wishlist_items: campaign_id, item_url
- campaign_post: campaign_id, post_text
- campaign_donor_post: campaign_id, campaign_donor_id, post_text 

### resources

- https://devcenter.heroku.com/articles/getting-started-with-rails5#database
- https://www.codementor.io/engineerapart/getting-started-with-postgresql-on-mac-osx-are8jcopb#i-introduction
- https://secret-ocean-86137.herokuapp.com/ git push heroku master
- heroku run rake db:migrate
