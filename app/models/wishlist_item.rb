class WishlistItem < ApplicationRecord
  belongs_to :campaign
end

# == Schema Information
#
# Table name: wishlist_items
#
#  id          :integer          not null, primary key
#  campaign_id :integer
#  item_url    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_wishlist_items_on_campaign_id  (campaign_id)
#
# Foreign Keys
#
#  fk_rails_...  (campaign_id => campaigns.id)
#
