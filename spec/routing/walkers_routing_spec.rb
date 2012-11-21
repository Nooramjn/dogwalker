require "spec_helper"

describe WalkersController do
  describe "routing" do

    it "routes to #index" do
      get("/walkers").should route_to("walkers#index")
    end

    it "routes to #new" do
      get("/walkers/new").should route_to("walkers#new")
    end

    it "routes to #show" do
      get("/walkers/1").should route_to("walkers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/walkers/1/edit").should route_to("walkers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/walkers").should route_to("walkers#create")
    end

    it "routes to #update" do
      put("/walkers/1").should route_to("walkers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/walkers/1").should route_to("walkers#destroy", :id => "1")
    end

  end
end
