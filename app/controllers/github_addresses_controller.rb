class GithubAddressesController < ApplicationController
  # GET /github_addresses
  # GET /github_addresses.json
  load_and_authorize_resource
  skip_authorize_resource :only => :new

  

  def index
    @github_addresses = GithubAddress.all
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @github_addresses }
    end
  end

  # GET /github_addresses/1
  # GET /github_addresses/1.json
  def show
    @github_address = GithubAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @github_address }
    end
  end

  # GET /github_addresses/new
  # GET /github_addresses/new.json
  def new
    @github_address = GithubAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @github_address }
    end
  end

  # GET /github_addresses/1/edit
  def edit
    @github_address = GithubAddress.find(params[:id])
  end

  # POST /github_addresses
  # POST /github_addresses.json
  def create
    p '1111111111111111111111111111111111'
    @github_address = GithubAddress.new(params[:github_address])
    
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
    @github_address = GithubAddress.find(params[:id])

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
    @github_address = GithubAddress.find(params[:id])
    @github_address.destroy

    respond_to do |format|
      format.html { redirect_to github_addresses_url }
      format.json { head :no_content }
    end
  end
end
