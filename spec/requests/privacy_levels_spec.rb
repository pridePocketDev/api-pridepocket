require 'rails_helper'

RSpec.describe "PrivacyLevels", type: :request do
  describe "GET /privacy_levels" do
    it "works! (now write some real specs)" do
      get privacy_levels_path
      expect(response).to have_http_status(200)
    end
  end
end
