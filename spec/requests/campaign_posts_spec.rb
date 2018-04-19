require 'rails_helper'

RSpec.describe "CampaignPosts", type: :request do
  describe "GET /campaign_posts" do
    it "works! (now write some real specs)" do
      get campaign_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
