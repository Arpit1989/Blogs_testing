class ProjectsController < ApplicationController
	
	def create
    @github_address = GithubAddress.find(params[:github_address_id])
    @project = @github_address.projects.create(params[:project])
    redirect_to github_address_path(@github_address)
    end
 
 def index
    @project = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @github_addresses }
    end
  end

  # GET /github_addresses/1
  # GET /github_addresses/1.json
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @github_address }
    end
  end

  # GET /github_addresses/new
  # GET /github_addresses/new.json
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @github_address }
    end
  end

  # GET /github_addresses/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /github_addresses
  # POST /github_addresses.json
  
  

  # PUT /github_addresses/1
  # PUT /github_addresses/1.json
  
  

	end
