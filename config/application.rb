require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FormSender
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.


    ActionMailer::Base.smtp_settings = {
        :address => 'smtp.gmail.com',
        :domain => 'mail.google.com',
        :port => 587,
        :user_name => 'test.id.14432@gmail.com',
        :password => 'pass14432',
        :authentication => 'login',
        :enable_starttls_auto => true
    }
  end

  # config.action_mailer.smtp_settings = {
  #     address: "smtp.gmail.com",
  #     port: 587,
  #     domain: "example.com",
  #     authentication: "plain",
  #     enable_starttls_auto: true,
  #     user_name: ENV["GMAIL_USERNAME"],
  #     password: ENV["GMAIL_PASSWORD"]
  # }
end
