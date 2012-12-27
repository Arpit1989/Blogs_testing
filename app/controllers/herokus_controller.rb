class HerokusController < ApplicationController
def create
    @project = Project.find(params[:project_id])
    @heroku = @project.herokus.create(params[:herokuurl])
    redirect_to github_address_path(@project)
  end


end
