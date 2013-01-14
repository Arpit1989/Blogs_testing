# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    projecturl "http://www.google.com"
    github_address nil
  end
end
