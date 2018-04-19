class Photo < ApplicationRecord
  belongs_to :campaign
end

# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  campaign_id :integer
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_photos_on_campaign_id  (campaign_id)
#
# Foreign Keys
#
#  fk_rails_...  (campaign_id => campaigns.id)
#
