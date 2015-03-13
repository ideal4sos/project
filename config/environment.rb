# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_setting = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => 'app34744846@heroku.com',
  :password => ENV['SENDGRID_PASSWORD'],
  :admin => 'heroku.com',
  :enable_startstls_auto => true
}
