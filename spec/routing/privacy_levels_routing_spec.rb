require "rails_helper"

RSpec.describe PrivacyLevelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/privacy_levels").to route_to("privacy_levels#index")
    end


    it "routes to #show" do
      expect(:get => "/privacy_levels/1").to route_to("privacy_levels#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/privacy_levels").to route_to("privacy_levels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/privacy_levels/1").to route_to("privacy_levels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/privacy_levels/1").to route_to("privacy_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/privacy_levels/1").to route_to("privacy_levels#destroy", :id => "1")
    end

  end
end
