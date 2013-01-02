class HerokusController < ApplicationController
def create

  p 'HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH'
  @github_address = GithubAddress.find(params[:github_address_id])
    @project = Project.find(params[:project_id])
    @heroku = @project.herokus.create(params[:herokuurl])
    redirect_to github_address_path(@github_address)

    p @github_address.projects
  end
def show
    @github_address = GithubAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @github_address }
    end
  end








def index
    @herokuurl = Heroku.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @github_addresses }
    end
  end

  # GET /github_addresses/1
  # GET /github_addresses/1.json
  def show
    @herokuurl = Heroku.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @github_address }
    end
  end

  # GET /github_addresses/new
  # GET /github_addresses/new.json
  def new
    @herokuurl = Heroku.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @github_address }
    end
  end

  # GET /github_addresses/1/edit
  def edit
    @herokuurl = Heroku.find(params[:id])
  end

  # POST /github_addresses
  # POST /github_addresses.json
  
  

  # PUT /github_addresses/1
  # PUT /github_addresses/1.json
  
  

end
