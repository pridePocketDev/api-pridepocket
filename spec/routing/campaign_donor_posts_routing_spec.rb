require "rails_helper"

RSpec.describe CampaignDonorPostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/campaign_donor_posts").to route_to("campaign_donor_posts#index")
    end


    it "routes to #show" do
      expect(:get => "/campaign_donor_posts/1").to route_to("campaign_donor_posts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/campaign_donor_posts").to route_to("campaign_donor_posts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/campaign_donor_posts/1").to route_to("campaign_donor_posts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/campaign_donor_posts/1").to route_to("campaign_donor_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/campaign_donor_posts/1").to route_to("campaign_donor_posts#destroy", :id => "1")
    end

  end
end
