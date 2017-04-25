require_relative 'boot'

require 'rails/all'
# require 'rack/ssl-enforcer'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Typingtyphoon
  class Application < Rails::Application
  	# config.middleware.insert_before  ActionDispatch::Cookies, Rack::SslEnforcer
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
