class Project < ActiveRecord::Base
  resourcify
  belongs_to :github_address
  attr_accessible :projecturl
  has_one :herokuurl
end
