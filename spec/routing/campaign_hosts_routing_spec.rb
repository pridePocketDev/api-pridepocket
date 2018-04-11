require "rails_helper"

RSpec.describe CampaignHostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/campaign_hosts").to route_to("campaign_hosts#index")
    end


    it "routes to #show" do
      expect(:get => "/campaign_hosts/1").to route_to("campaign_hosts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/campaign_hosts").to route_to("campaign_hosts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/campaign_hosts/1").to route_to("campaign_hosts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/campaign_hosts/1").to route_to("campaign_hosts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/campaign_hosts/1").to route_to("campaign_hosts#destroy", :id => "1")
    end

  end
end
