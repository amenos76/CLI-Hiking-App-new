require 'bundler/setup'
Bundler.require

require_all 'app'

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil