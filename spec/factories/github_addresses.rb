# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :github_address do
    githubadd "MyString"
    User nil
  end
end
