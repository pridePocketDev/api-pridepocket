rails generate scaffold WepayAccount token:string user:references --force # then add null: false
rails generate scaffold CampaignHost user:references self_description:string profile_image_url:string wepay_account:references --force # then add null: false
rails generate scaffold Donor user:references name:string --force # then add null: false
rails generate scaffold PrivacyLevel name:string:uniq --force
rails generate scaffold Campaign campaign_host:references goal_amount_cents:integer welcome_message:string thank_you_note:string published:datetime start_at:datetime end_at:datetime description:string privacy_level:references --force # then add null: false
sleep 5 # why does this not run in order, WHY
rails generate scaffold Photo campaign:references url:string --force # then add null: false
rails generate scaffold Donation campaign:references donor:references amount_cents:integer wepay_transaction_token:string --force # then add null: false
rails generate scaffold WishlistItem campaign:references item_url:string --force # then add null: false
rails generate scaffold CampaignPost campaign:references post_text:string --force # then add null: false
rails generate scaffold CampaignDonorPost campaign:references donor:references post_text:string --force # then add null: false
rails generate scaffold Tag name:string:uniq --force # then add null: false
rails generate scaffold CampaignTag campaign:references tag:references --force # then add null: false
bin/rails db:environment:set RAILS_ENV=development
rake db:drop db:create db:migrate
