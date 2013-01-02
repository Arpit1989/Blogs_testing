class BlogAddress < ActiveRecord::Base
  resourcify
  belongs_to :User
  attr_accessible :blogadd ,:name
  validates_presence_of :blogadd

end
