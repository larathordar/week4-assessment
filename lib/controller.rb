require 'bundler'
Bundler.require
Dir[File.join(File.dirname(__FILE__), 'models', '*.rb')].each { |file| require file }
require 'pry'

class SlowFood < Sinatra::Base

  # Your code will go here.

end
