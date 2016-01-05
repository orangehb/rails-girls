require "rails_helper"

RSpec.describe ComentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coments").to route_to("coments#index")
    end

    it "routes to #new" do
      expect(:get => "/coments/new").to route_to("coments#new")
    end

    it "routes to #show" do
      expect(:get => "/coments/1").to route_to("coments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coments/1/edit").to route_to("coments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coments").to route_to("coments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/coments/1").to route_to("coments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/coments/1").to route_to("coments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coments/1").to route_to("coments#destroy", :id => "1")
    end

  end
end
