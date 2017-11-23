# frozen_string_literal: true

# Require config/environment.rb
require ::File.expand_path('../config/environment', __FILE__)

set :app_file, __FILE__

run WeekFourAssessment.new
