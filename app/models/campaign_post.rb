class CampaignPost < ApplicationRecord
  belongs_to :campaign
end

# == Schema Information
#
# Table name: campaign_posts
#
#  id          :integer          not null, primary key
#  campaign_id :integer
#  post_text   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_campaign_posts_on_campaign_id  (campaign_id)
#
# Foreign Keys
#
#  fk_rails_...  (campaign_id => campaigns.id)
#
