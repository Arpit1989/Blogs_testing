class Project < ActiveRecord::Base
  resourcify
  belongs_to :github_address
  attr_accessible :projecturl 
  validates_presence_of :projecturl
  has_one :heroku, :dependent => :destroy
end
