require "rails_helper"

RSpec.describe WepayAccountsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wepay_accounts").to route_to("wepay_accounts#index")
    end


    it "routes to #show" do
      expect(:get => "/wepay_accounts/1").to route_to("wepay_accounts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/wepay_accounts").to route_to("wepay_accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wepay_accounts/1").to route_to("wepay_accounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wepay_accounts/1").to route_to("wepay_accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wepay_accounts/1").to route_to("wepay_accounts#destroy", :id => "1")
    end

  end
end
