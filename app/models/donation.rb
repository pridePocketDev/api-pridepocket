class Donation < ApplicationRecord
  belongs_to :campaign
  belongs_to :donor
end

# == Schema Information
#
# Table name: donations
#
#  id                      :integer          not null, primary key
#  campaign_id             :integer
#  donor_id                :integer
#  amount_cents            :integer
#  wepay_transaction_token :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_donations_on_campaign_id  (campaign_id)
#  index_donations_on_donor_id     (donor_id)
#
# Foreign Keys
#
#  fk_rails_...  (campaign_id => campaigns.id)
#  fk_rails_...  (donor_id => donors.id)
#
