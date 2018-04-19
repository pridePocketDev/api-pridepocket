require "rails_helper"

RSpec.describe CampaignTagsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/campaign_tags").to route_to("campaign_tags#index")
    end


    it "routes to #show" do
      expect(:get => "/campaign_tags/1").to route_to("campaign_tags#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/campaign_tags").to route_to("campaign_tags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/campaign_tags/1").to route_to("campaign_tags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/campaign_tags/1").to route_to("campaign_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/campaign_tags/1").to route_to("campaign_tags#destroy", :id => "1")
    end

  end
end
