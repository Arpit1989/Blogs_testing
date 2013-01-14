# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog_address do
    blogadd "http://www.google.com"
    User nil
  end
end
