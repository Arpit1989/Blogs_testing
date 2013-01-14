# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :github_address do
    githubadd "http://www.google.com"
    User nil
  end
end
