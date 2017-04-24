require "rails_helper"

RSpec.describe OrderStatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/order_statuses").to route_to("order_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/order_statuses/new").to route_to("order_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/order_statuses/1").to route_to("order_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/order_statuses/1/edit").to route_to("order_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/order_statuses").to route_to("order_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/order_statuses/1").to route_to("order_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/order_statuses/1").to route_to("order_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_statuses/1").to route_to("order_statuses#destroy", :id => "1")
    end

  end
end
