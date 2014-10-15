ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)

# This must be before rails/test_help or test/unit is required
if ENV['USE_PIPPI'].present?
  Pippi::AutoRunner.new(:checkset => ENV['PIPPI_CHECKSET'] || "training")
end

require 'rails/test_help'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
