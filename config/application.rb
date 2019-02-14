require_relative 'boot'

require 'rails/all'
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NewsBlog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.


    config.load_defaults 5.1
    
    config.cache_classes = true
	config.serve_static_assets = true
	config.assets.compile = true
	config.assets.digest = true
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.enabled = true
    config.i18n.default_locale = :ru
    config.active_job.queue_adapter = :delayed_job
    # Delayed::Job.enqueue(MailingJob.new, :run_at => @week_time)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
