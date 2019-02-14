# Load the Rails application.
require_relative 'application'

# ActionMailer::Base.smtp_settings = {
#   :user_name => 'tobefun',
#   :password => '1q1q1q1q1q',
#   :domain => 'my-blog-news-test.herokuapp.com',
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }

ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:           	ENV["GMAIL_USERNAME"],
  password:             ENV["GMAIL_PASSWORD"],
  authentication:       :login,
  enable_starttls_auto: true
}
# Initialize the Rails application.
Rails.application.initialize!
