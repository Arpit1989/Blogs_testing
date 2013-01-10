class User < ActiveRecord::Base
	
  
  rolify 

  
  
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me ,:github_addresses_attributes
  # attr_accessible :title, :body
  validates_presence_of :name, :email
  validates_uniqueness_of :name, :email, :case_sensitive => false
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  has_many :github_addresses
  has_many :blog_addresses
  accepts_nested_attributes_for :github_addresses,allow_destroy: true
end
