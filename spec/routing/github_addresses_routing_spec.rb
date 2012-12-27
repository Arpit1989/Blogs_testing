require "spec_helper"

describe GithubAddressesController do
  describe "routing" do

    it "routes to #index" do
      get("/github_addresses").should route_to("github_addresses#index")
    end

    it "routes to #new" do
      get("/github_addresses/new").should route_to("github_addresses#new")
    end

    it "routes to #show" do
      get("/github_addresses/1").should route_to("github_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/github_addresses/1/edit").should route_to("github_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/github_addresses").should route_to("github_addresses#create")
    end

    it "routes to #update" do
      put("/github_addresses/1").should route_to("github_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/github_addresses/1").should route_to("github_addresses#destroy", :id => "1")
    end

  end
end
