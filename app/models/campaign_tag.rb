class CampaignTag < ApplicationRecord
  belongs_to :campaign
  belongs_to :tag
end

# == Schema Information
#
# Table name: campaign_tags
#
#  id          :integer          not null, primary key
#  campaign_id :integer
#  tag_id      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_campaign_tags_on_campaign_id  (campaign_id)
#  index_campaign_tags_on_tag_id       (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (campaign_id => campaigns.id)
#  fk_rails_...  (tag_id => tags.id)
#
