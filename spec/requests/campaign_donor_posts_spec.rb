require 'rails_helper'

RSpec.describe "CampaignDonorPosts", type: :request do
  describe "GET /campaign_donor_posts" do
    it "works! (now write some real specs)" do
      get campaign_donor_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
