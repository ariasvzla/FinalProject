require "rails_helper"

RSpec.describe SetvsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/setvs").to route_to("setvs#index")
    end

    it "routes to #new" do
      expect(:get => "/setvs/new").to route_to("setvs#new")
    end

    it "routes to #show" do
      expect(:get => "/setvs/1").to route_to("setvs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/setvs/1/edit").to route_to("setvs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/setvs").to route_to("setvs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/setvs/1").to route_to("setvs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/setvs/1").to route_to("setvs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/setvs/1").to route_to("setvs#destroy", :id => "1")
    end

  end
end
