ENV['RACK_ENV'] = 'test'

require './config/environment'
require 'capybara'
require 'capybara/rspec'
require 'database_cleaner'
require 'pry'
require 'rack/test'
require 'shoulda-matchers'

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  config.include Shoulda::Matchers::ActiveModel
  config.include Shoulda::Matchers::ActiveRecord
end

def app
  WeekFourAssessment
end
