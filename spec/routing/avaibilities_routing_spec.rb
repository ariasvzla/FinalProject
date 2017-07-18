require "rails_helper"

RSpec.describe AvaibilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/avaibilities").to route_to("avaibilities#index")
    end

    it "routes to #new" do
      expect(:get => "/avaibilities/new").to route_to("avaibilities#new")
    end

    it "routes to #show" do
      expect(:get => "/avaibilities/1").to route_to("avaibilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/avaibilities/1/edit").to route_to("avaibilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/avaibilities").to route_to("avaibilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/avaibilities/1").to route_to("avaibilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/avaibilities/1").to route_to("avaibilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/avaibilities/1").to route_to("avaibilities#destroy", :id => "1")
    end

  end
end
