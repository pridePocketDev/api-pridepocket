class PrivacyLevel < ApplicationRecord
end

# == Schema Information
#
# Table name: privacy_levels
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_privacy_levels_on_name  (name) UNIQUE
#
