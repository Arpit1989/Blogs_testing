require 'spec_helper'
#rolify 
# Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
 # devise :database_authenticatable, :registerable,
   #      :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :role_ids, :as => :admin
  #attr_accessible :name, :email, :password, :password_confirmation, :remember_me ,:github_addresses_attributes
  # attr_accessible :title, :body
  #has_many :github_addresses
  #has_many :blog_addresses
  #accepts_nested_attributes_for :github_addresses,allow_destroy: true
  #before_save { |user| user.email = email.downcase }

#  validates(:name, presence: true, length: { maximum: 50 } )
 # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  #validates :password, presence: true, length: { minimum: 6 }
  #validates :password_confirmation, presence: true
describe User do
  it "should have many github_addresses and blog_addresses" do
    g = User.reflect_on_association(:github_addresses)
    h = User.reflect_on_association(:blog_addresses)
    g.macro.should == :has_many
    h.macro.should == :has_many
  end

end
describe User do
   before { @user = User.new(name: "Example User", email: "user@example.com",
   password: "foobar", password_confirmation: "foobar") }
subject { @user }
it { should respond_to(:name) }
it { should respond_to(:email) }
it { should respond_to(:password) }
it { should respond_to(:password_confirmation) }




describe "when name is not present" do
before { @user.name = " " }
it { should_not be_valid }
end

describe "when email is not present" do
before { @user.email = " " }
it { should_not be_valid }
end


describe "when name is too long" do
before { @user.name = "a" * 51 }
it { should_not be_valid }
end

describe "when email format is invalid" do
it "should be invalid" do
addresses = %w[user@foo,com user_at_foo.org example.user@foo.foo@bar_baz.com foo@bar+baz.com]
addresses.each do |invalid_address|
@user.email = invalid_address
@user.should_not be_valid
end
end
end

describe "when email format is valid" do
it "should be valid" do
addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
addresses.each do |valid_address|
@user.email = valid_address
@user.should be_valid
end
end
end

describe "when email address is already taken" do
before do
user_with_same_email = @user.dup
user_with_same_email.save
end
it { should_not be_valid }
end

describe "when email address is already taken" do
before do
user_with_same_email = @user.dup
user_with_same_email.email = @user.email.upcase
user_with_same_email.save
end
it { should_not be_valid }
end

describe "when password is not present" do
before { @user.password = @user.password_confirmation = " " }
it { should_not be_valid }
end

describe "when password doesn't match confirmation" do
before { @user.password_confirmation = "mismatch" }
it { should_not be_valid }
end

describe "when password confirmation is nil" do
before { @user.password_confirmation = nil }
it { should_not be_valid }
end

describe "with a password that's too short" do
before { @user.password = @user.password_confirmation = "a" * 5 }
it { should be_invalid }
end

end


