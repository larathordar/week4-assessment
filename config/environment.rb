ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])

require 'active_record'
require 'logger'
require 'pathname'
require 'pg'
require 'rubygems'
require 'sinatra'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'uri'
# require 'sinatra/reloader' if development?
require 'pry-byebug' unless production?

require 'erb'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

APP_NAME = 'week_four_assessment'.freeze

require APP_ROOT.join('config', 'database')

class WeekFourAssessmentApp < Sinatra::Base
  disable :logger, :dump_errors
  enable :sessions
  register Sinatra::Flash
  helpers Sinatra::RedirectWithFlash

  set :session_secret, ENV['SESSION_SECRET'] || '1234ewqweert452233'
  set :method_override, true
  set :root, APP_ROOT
  set :views, File.join(APP_ROOT, 'app', 'views')
  set :public_folder, File.join(APP_ROOT, 'app', 'public')
  set :show_exceptions, false
end

Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }
