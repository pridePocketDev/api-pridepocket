class Campaign < ApplicationRecord
  belongs_to :campaign_host
  belongs_to :privacy_level
end

# == Schema Information
#
# Table name: campaigns
#
#  id                :integer          not null, primary key
#  campaign_host_id  :integer
#  goal_amount_cents :integer
#  welcome_message   :string
#  thank_you_note    :string
#  published         :datetime
#  start_at          :datetime
#  end_at            :datetime
#  description       :string
#  privacy_level_id  :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_campaigns_on_campaign_host_id  (campaign_host_id)
#  index_campaigns_on_privacy_level_id  (privacy_level_id)
#
# Foreign Keys
#
#  fk_rails_...  (campaign_host_id => campaign_hosts.id)
#  fk_rails_...  (privacy_level_id => privacy_levels.id)
#
