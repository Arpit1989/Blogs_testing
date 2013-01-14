require 'spec_helper'
 # resourcify
 # belongs_to :User
 # attr_accessible :githubadd ,:name,:User_id, :projects_attributes
 # has_many :projects
 # accepts_nested_attributes_for :projects, allow_destroy: true
 # validates :githubadd, presence: true,:format => URI::regexp(%w(http https))

describe GithubAddress do
  it "should Belongs to User" do
    g = GithubAddress.reflect_on_association(:User)
    h = GithubAddress.reflect_on_association(:projects)
    g.macro.should == :belongs_to
    h.macro.should == :has_many
           end 

end

describe GithubAddress do
   before { @github = GithubAddress.new(githubadd: "http://www.google.com") }
subject { @github }
it { should respond_to(:githubadd) }



describe "when GithubAddress is not present" do
before { @github.githubadd = " " }
it { should_not be_valid }
end


describe "when GithubAddress format is invalid" do
it "should be invalid" do
addresses = %w[user@foo,com user_at_foo.org example.user@foo.foo@bar_baz.com foo@bar+baz.com]
addresses.each do |invalid_address|
@github.githubadd = invalid_address
@github.should_not be_valid
               end
                      end
                                        end

describe "when GithubAddress format is valid" do
it "should be valid" do
addresses = %w[http://www.goo.com, https://ww.fa.com]
addresses.each do |valid_address|
@github.githubadd = valid_address
@github.should be_valid
              end
                    end
                                      end
 end
