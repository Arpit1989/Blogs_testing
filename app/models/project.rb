class Project < ActiveRecord::Base
  resourcify
  belongs_to :github_address
  attr_accessible :projecturl ,:github_address_id ,:heroku_attributes
  has_one :heroku
  accepts_nested_attributes_for :heroku ,allow_destroy: true
  validates :projecturl,:format => URI::regexp(%w(http https))
end
