# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Rails.env.production?
  pride_pocket_image = 'http://secret.pridepocket.org/wp-content/uploads/2017/05/pride-pocket_logo-white-high-res-300x116.png'
  rainbow_flag_url = 'https://smile.amazon.com/ANLEY-Breeze-Foot-Rainbow-Flag/dp/B01JFWOV5I'
  User.create! email: '2@example.com', password: 'password'
  WepayAccount.create! user: User.first, token: 'foo'
  CampaignHost.create! user: User.first, self_description: 'self_description', profile_image_url: pride_pocket_image, wepay_account: WepayAccount.first
  Donor.create! user: User.first, name: 'name'
  PrivacyLevel.create! name: 'public'
  PrivacyLevel.create! name: 'link-only'
  PrivacyLevel.create! name: 'private'
  Campaign.create! campaign_host: CampaignHost.first, goal_amount_cents: 100_000, welcome_message: 'welcome message', thank_you_note: 'thank you note', published: true, start_at: Time.now, end_at: Time.now + 10.days, description: 'description', privacy_level: PrivacyLevel.first
  Photo.create! campaign: Campaign.first, url: pride_pocket_image
  Donation.create! campaign: Campaign.first, donor: Donor.first, amount_cents: 100, wepay_transaction_token: 'fake token'
  WishlistItem.create! campaign: Campaign.first, item_url: rainbow_flag_url
  CampaignPost.create! campaign: Campaign.first, post_text: 'post text'
  CampaignDonorPost.create! campaign: Campaign.first, donor: Donor.first, post_text: 'post text'
  Tag.create! name: 'family-planning'
  CampaignTag.create! campaign: Campaign.first, tag: Tag.first
end
