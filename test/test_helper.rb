ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
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

if ENV['USE_PIPPI'].present?
  # TODO do something so the Rails project doesn't need to know so much about Pippi internals
  ctx = Pippi::Context.new({:report => Pippi::Report.new(Logger.new("log/pippi.log", "w")), :logger => self})
  TracepointListener.new(Pippi::CheckLoader.for_check_name(ctx, "SelectFollowedByFirst").check)
end