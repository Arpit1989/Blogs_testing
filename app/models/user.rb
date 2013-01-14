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
  has_many :github_addresses
  has_many :blog_addresses
  accepts_nested_attributes_for :github_addresses,allow_destroy: true
  before_save { |user| user.email = email.downcase }

  validates(:name, presence: true, length: { maximum: 50 } )
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
