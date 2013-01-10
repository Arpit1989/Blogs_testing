class GithubAddressesController < ApplicationController
  # GET /github_addresses
  # GET /github_addresses.json
  load_and_authorize_resource
  skip_authorize_resource :only => :new
  before_filter :get_github, :only => [:edit,:update,:delete]
  before_filter :check_auth, :only => [:edit,:update,:delete]
  

  def get_github
  @github_address = GithubAddress.find(params[:id])
  end
  def check_auth
    if current_user.id != @github_address.User_id
      flash[:notice] ="Sorry Not your Github to edit"
      redirect_to github_address_path
    end
  end
  

  def index
    @github_addresses = GithubAddress.all
  end

  # GET /github_addresses/1
  # GET /github_addresses/1.json
  def show
    @github_address = GithubAddress.find(params[:id])
  end

  # GET /github_addresses/new
  # GET /github_addresses/new.json
  def new
    @github_address = GithubAddress.new
  end

  # GET /github_addresses/1/edit
  def edit
  end

  # POST /github_addresses
  # POST /github_addresses.json
  def create
    @github_address = GithubAddress.new(params[:github_address])
    @github_address.User_id = current_user.id
    respond_to do |format|
      if @github_address.save
        format.html { redirect_to @github_address, notice: 'Github address was successfully created.' }
        format.json { render json: @github_address, status: :created, location: @github_address }
      else
        format.html { render action: "new" }
        format.json { render json: @github_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /github_addresses/1
  # PUT /github_addresses/1.json
  def update
    
    respond_to do |format|
      if @github_address.update_attributes(params[:github_address]) 
        format.html { redirect_to @github_address, notice: 'Github address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @github_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /github_addresses/1
  # DELETE /github_addresses/1.json
  def destroy
    @github_address.destroy

    respond_to do |format|
      format.html { redirect_to github_addresses_url }
      format.json { head :no_content }
    end
  end
end
