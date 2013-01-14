require 'spec_helper'
require 'devise/test_helpers'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe GithubAddressesController do
  render_views
  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end
  # This should return the minimal set of attributes required to create a valid
  # GithubAddress. As you add validations to GithubAddress, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "githubadd" => "http://www.google.com" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GithubAddressesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all github_addresses as @github_addresses" do
      github_address = GithubAddress.create! valid_attributes
      get :index, {}, valid_session
      assigns(:github_addresses).should eq([github_address])
    end
  end

  describe "GET show" do
    it "assigns the requested github_address as @github_address" do
      github_address = GithubAddress.create! valid_attributes
      get :show, {:id => github_address.to_param}, valid_session
      assigns(:github_address).should eq(github_address)
    end
  end

  describe "GET new" do
    it "assigns a new github_address as @github_address" do
      get :new, {}, valid_session
      assigns(:github_address).should be_a_new(GithubAddress)
    end
  end

  describe "GET edit" do
    it "assigns the requested github_address as @github_address" do
      github_address = GithubAddress.create! valid_attributes
      get :edit, {:id => github_address.to_param}, valid_session
      assigns(:github_address).should eq(github_address)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GithubAddress" do
        expect {
          post :create, {:github_address => valid_attributes}, valid_session
        }.to change(GithubAddress, :count).by(1)
      end

      it "assigns a newly created github_address as @github_address" do
        post :create, {:github_address => valid_attributes}, valid_session
        assigns(:github_address).should be_a(GithubAddress)
        assigns(:github_address).should be_persisted
      end

      it "redirects to the created github_address" do
        post :create, {:github_address => valid_attributes}, valid_session
        response.should redirect_to(GithubAddress.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved github_address as @github_address" do
        # Trigger the behavior that occurs when invalid params are submitted
        GithubAddress.any_instance.stub(:save).and_return(false)
        post :create, {:github_address => { "githubadd" => "invalid value" }}, valid_session
        assigns(:github_address).should be_a_new(GithubAddress)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        GithubAddress.any_instance.stub(:save).and_return(false)
        post :create, {:github_address => { "githubadd" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested github_address" do
        github_address = GithubAddress.create! valid_attributes
        # Assuming there are no other github_addresses in the database, this
        # specifies that the GithubAddress created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        GithubAddress.any_instance.should_receive(:update_attributes).with({ "githubadd" => "MyString" })
        put :update, {:id => github_address.to_param, :github_address => { "githubadd" => "MyString" }}, valid_session
      end

      it "assigns the requested github_address as @github_address" do
        github_address = GithubAddress.create! valid_attributes
        put :update, {:id => github_address.to_param, :github_address => valid_attributes}, valid_session
        assigns(:github_address).should eq(github_address)
      end

      it "redirects to the github_address" do
        github_address = GithubAddress.create! valid_attributes
        put :update, {:id => github_address.to_param, :github_address => valid_attributes}, valid_session
        response.should redirect_to(github_address)
      end
    end

    describe "with invalid params" do
      it "assigns the github_address as @github_address" do
        github_address = GithubAddress.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GithubAddress.any_instance.stub(:save).and_return(false)
        put :update, {:id => github_address.to_param, :github_address => { "githubadd" => "invalid value" }}, valid_session
        assigns(:github_address).should eq(github_address)
      end

      it "re-renders the 'edit' template" do
        github_address = GithubAddress.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GithubAddress.any_instance.stub(:save).and_return(false)
        put :update, {:id => github_address.to_param, :github_address => { "githubadd" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested github_address" do
      github_address = GithubAddress.create! valid_attributes
      expect {
        delete :destroy, {:id => github_address.to_param}, valid_session
      }.to change(GithubAddress, :count).by(-1)
    end

    it "redirects to the github_addresses list" do
      github_address = GithubAddress.create! valid_attributes
      delete :destroy, {:id => github_address.to_param}, valid_session
      response.should redirect_to(github_addresses_url)
    end
  end

end
