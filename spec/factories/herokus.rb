# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :heroku do
    herokuurl "http://www.google.com"
    project nil
  end
end
