class Heroku < ActiveRecord::Base
  belongs_to :User
  attr_accessible :herokuurl, :project_id 
  belongs_to :project
end
