ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# Assert breadcrumbs
# require 'helpers/breadcrumb_helper'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  ActiveRecord::Migration.check_pending!
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.logger = Rails.logger
  setup { DatabaseCleaner.start }
  teardown { DatabaseCleaner.clean }
end
