class Projt < ActiveRecord::Base
  belongs_to :github_address
  attr_accessible :title
end
