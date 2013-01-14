class GithubAddress < ActiveRecord::Base
  resourcify
  belongs_to :User
  attr_accessible :githubadd ,:name,:User_id, :projects_attributes
  has_many :projects
  accepts_nested_attributes_for :projects, allow_destroy: true
  validates :githubadd, presence: true,:format => URI::regexp(%w(http https))
end
