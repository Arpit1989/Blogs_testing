class BlogAddress < ActiveRecord::Base
  resourcify
  belongs_to :User
  attr_accessible :blogadd ,:name,:User_id
  validates :blogadd, presence: true,:format => URI::regexp(%w(http https))

end
