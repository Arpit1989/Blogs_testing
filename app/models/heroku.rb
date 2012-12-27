class Heroku < ActiveRecord::Base
  belongs_to :project
  attr_accessible :herokuurl
end
