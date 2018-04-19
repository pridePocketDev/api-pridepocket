require 'rails_helper'

RSpec.describe "CampaignTags", type: :request do
  describe "GET /campaign_tags" do
    it "works! (now write some real specs)" do
      get campaign_tags_path
      expect(response).to have_http_status(200)
    end
  end
end
