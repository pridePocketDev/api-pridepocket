class CampaignHost < ApplicationRecord
  belongs_to :user
  belongs_to :wepay_account
end

# == Schema Information
#
# Table name: campaign_hosts
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  self_description  :string
#  profile_image_url :string
#  wepay_account_id  :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_campaign_hosts_on_user_id           (user_id)
#  index_campaign_hosts_on_wepay_account_id  (wepay_account_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#  fk_rails_...  (wepay_account_id => wepay_accounts.id)
#
