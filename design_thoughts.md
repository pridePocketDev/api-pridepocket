design thoughts:

management- activeadmin
management activities-
lock account, end campaign, ??
tracking events- gem paper_trail? https://github.com/airblade/paper_trail#1b-installation

deployment thoughts-
heroku for now, much much simpler than aws. gotta move off of it eventually, but eh.
migration- gotta dump and load a database at some point

Devise for auth https://github.com/plataformatec/devise

objects- ALL have created_at and updated_at
user - email, hashed_password
campaign- user, secutity_level(public, link_only, invite_only), end_date, goal_amount_cents
donation - amount, donator
wepay_account - token, ?? (see rubygem- choose one)
images- link to s3 hosted images probably- campaign_id, image_url (many to many)
email- contents_blob, on_behalf_of_user, to_user
post- campaign_id, author_id
comment- campaign_id, poster_id

rails generate scaffold User password:string score:integer
