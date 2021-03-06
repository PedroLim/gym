require "rails_helper"

RSpec.describe MuscularGroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/muscular_groups").to route_to("muscular_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/muscular_groups/new").to route_to("muscular_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/muscular_groups/1").to route_to("muscular_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/muscular_groups/1/edit").to route_to("muscular_groups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/muscular_groups").to route_to("muscular_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/muscular_groups/1").to route_to("muscular_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/muscular_groups/1").to route_to("muscular_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/muscular_groups/1").to route_to("muscular_groups#destroy", :id => "1")
    end

  end
end
