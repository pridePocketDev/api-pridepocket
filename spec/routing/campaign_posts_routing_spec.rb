require "rails_helper"

RSpec.describe CampaignPostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/campaign_posts").to route_to("campaign_posts#index")
    end


    it "routes to #show" do
      expect(:get => "/campaign_posts/1").to route_to("campaign_posts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/campaign_posts").to route_to("campaign_posts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/campaign_posts/1").to route_to("campaign_posts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/campaign_posts/1").to route_to("campaign_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/campaign_posts/1").to route_to("campaign_posts#destroy", :id => "1")
    end

  end
end
