class Heroku < ActiveRecord::Base
  belongs_to :User
  attr_accessible :herokuurl, :project_id 
  belongs_to :project
  validates :herokuurl, :format => URI::regexp(%w(http https))
end
