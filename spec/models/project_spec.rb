require 'spec_helper'
#resourcify
 # belongs_to :github_address
  #attr_accessible :projecturl ,:github_address_id ,:heroku_attributes
  #validates_presence_of :projecturl
  #has_one :heroku
  #accepts_nested_attributes_for :heroku ,allow_destroy: true
describe Project do
  it "should have one heroku and belongs to github addresses" do
    g = Project.reflect_on_association(:heroku)
    h = Project.reflect_on_association(:github_address)
    g.macro.should == :has_one
    h.macro.should == :belongs_to
  end

end
describe Project do
   before { @project = Project.new(projecturl: "http://www.google.com") }
subject { @project }
it { should respond_to(:projecturl) }



it { should be_valid }
describe "when Url is not present" do
before { @project.projecturl = " " }
it { should_not be_valid }
end

describe "when Project format is invalid" do
it "should be invalid" do
addresses = %w[user@foo,com user_at_foo.org example.user@foo.foo@bar_baz.com foo@bar+baz.com]
addresses.each do |invalid_address|
@project.projecturl = invalid_address
@project.should_not be_valid
               end
                      end
                                        end

describe "when Project format is valid" do
it "should be valid" do
addresses = %w[http://www.goo.com, https://ww.fa.com]
addresses.each do |valid_address|
@project.projecturl = valid_address
@project.should be_valid
              end
                    end
                                      end
 end
