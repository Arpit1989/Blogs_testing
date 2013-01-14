require 'spec_helper'
  #belongs_to :User
  #attr_accessible :herokuurl, :project_id 
  #belongs_to :project
  #validates :herokuurl, :format => URI::regexp(%w(http https))

describe Heroku do
  it "should Belongs to User" do
    g = Heroku.reflect_on_association(:User)
    g.macro.should == :belongs_to
           end 

end

describe Heroku do
   before { @heroku = Heroku.new(herokuurl: "http://www.google.com") }
subject { @heroku }
it { should respond_to(:herokuurl) }



it { should be_valid }
describe "when Url is not present" do
before { @heroku.herokuurl = " " }
it { should_not be_valid }
end

describe "when Heroku format is invalid" do
it "should be invalid" do
addresses = %w[user@foo,com user_at_foo.org example.user@foo.foo@bar_baz.com foo@bar+baz.com]
addresses.each do |invalid_address|
@heroku.herokuurl = invalid_address
@heroku.should_not be_valid
               end
                      end
                                        end

describe "when Heroku format is valid" do
it "should be valid" do
addresses = %w[http://www.goo.com, https://ww.fa.com]
addresses.each do |valid_address|
@heroku.herokuurl = valid_address
@heroku.should be_valid
              end
                    end
                                      end
 end
