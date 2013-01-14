require 'spec_helper'
#  resourcify
#  belongs_to :User
#  attr_accessible :blogadd ,:name,:User_id
#  validates :blogadd, presence: true,:format => URI::regexp(%w(http https))


describe BlogAddress do
  it "should Belongs to User" do
    g = BlogAddress.reflect_on_association(:User)
    g.macro.should == :belongs_to
           end 

end

describe BlogAddress do
   before { @blog = BlogAddress.new(blogadd: "http://www.google.com") }
subject { @blog }
it { should respond_to(:blogadd) }



describe "when BlogAddress is not present" do
before { @blog.blogadd = " " }
it { should_not be_valid }
end


describe "when BlogAddress format is invalid" do
it "should be invalid" do
addresses = %w[user@foo,com user_at_foo.org example.user@foo.foo@bar_baz.com foo@bar+baz.com]
addresses.each do |invalid_address|
@blog.blogadd = invalid_address
@blog.should_not be_valid
               end
                      end
                                        end

describe "when BlogAddress format is valid" do
it "should be valid" do
addresses = %w[http://www.goo.com, https://ww.fa.com]
addresses.each do |valid_address|
@blog.blogadd = valid_address
@blog.should be_valid
              end
                    end
                                      end
 end
