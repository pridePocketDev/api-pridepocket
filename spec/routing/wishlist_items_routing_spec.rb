require "rails_helper"

RSpec.describe WishlistItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wishlist_items").to route_to("wishlist_items#index")
    end


    it "routes to #show" do
      expect(:get => "/wishlist_items/1").to route_to("wishlist_items#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/wishlist_items").to route_to("wishlist_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wishlist_items/1").to route_to("wishlist_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wishlist_items/1").to route_to("wishlist_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wishlist_items/1").to route_to("wishlist_items#destroy", :id => "1")
    end

  end
end
