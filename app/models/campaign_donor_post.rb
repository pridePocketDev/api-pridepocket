class CampaignDonorPost < ApplicationRecord
  belongs_to :campaign
  belongs_to :donor
end

# == Schema Information
#
# Table name: campaign_donor_posts
#
#  id          :integer          not null, primary key
#  campaign_id :integer
#  donor_id    :integer
#  post_text   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_campaign_donor_posts_on_campaign_id  (campaign_id)
#  index_campaign_donor_posts_on_donor_id     (donor_id)
#
# Foreign Keys
#
#  fk_rails_...  (campaign_id => campaigns.id)
#  fk_rails_...  (donor_id => donors.id)
#
