# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rspec'
require 'email_spec'
# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end
RSpec.configure do |config|
  config.include(EmailSpec::Helpers)
  config.include(EmailSpec::Matchers)
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end
  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end

RSpec::Matchers.define :accept_nested_attributes_for do |association|

  match do |model|
  @model = model
  @nested_att_present = model.respond_to?("#{association}_attributes=".to_sym)

  if @nested_att_present && @reject
   model.send("#{association}_attributes=".to_sym,[@reject])
   @reject_success = model.send("#{association}").empty?
  end

  if @nested_att_present && @accept
    model.send("#{association}_attributes=".to_sym,[@accept])
    @accept_success = ! (model.send("#{association}").empty?)
  end
   @nested_att_present && ( @reject.nil? || @reject_success ) && ( @accept.nil? || @accept_success )
  end
    failure_message_for_should do
    messages = []
    messages << "expected #{@model.class} to accept nested attributes for #{association}" unless @nested_att_present
    messages << "expected #{@model.class} to reject values #{@reject.inspect} for association #{association}" unless @reject_success
    messages << "expected #{@model.class} to accept values #{@accept.inspect} for association #{association}" unless @accept_success
    messages.join(", ")
  end

  description do
   desc = "accept nested attributes for #{expected}"
    if @reject
    desc << ", but reject if attributes are #{@reject.inspect}"
   end
  end
  chain :but_reject do |reject|
  @reject = reject
  end
  chain :and_accept do |accept|
  @accept = accept
  end

end

end
 
 