class BlogAddress < ActiveRecord::Base
  resourcify
  belongs_to :User
  attr_accessible :blogadd ,:name,:User_id
  validates_presence_of :blogadd

end
