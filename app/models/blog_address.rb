class BlogAddress < ActiveRecord::Base
  belongs_to :User
  attr_accessible :blogadd
  validates_presence_of :blogadd
end
