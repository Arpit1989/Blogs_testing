class GithubAddress < ActiveRecord::Base
  resourcify
  belongs_to :User
  attr_accessible :githubadd ,:name
  validates_presence_of :githubadd
  has_many :projects,:dependent => :destroy
 
end
