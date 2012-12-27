require "spec_helper"

describe BlogAddressesController do
  describe "routing" do

    it "routes to #index" do
      get("/blog_addresses").should route_to("blog_addresses#index")
    end

    it "routes to #new" do
      get("/blog_addresses/new").should route_to("blog_addresses#new")
    end

    it "routes to #show" do
      get("/blog_addresses/1").should route_to("blog_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blog_addresses/1/edit").should route_to("blog_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blog_addresses").should route_to("blog_addresses#create")
    end

    it "routes to #update" do
      put("/blog_addresses/1").should route_to("blog_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blog_addresses/1").should route_to("blog_addresses#destroy", :id => "1")
    end

  end
end
