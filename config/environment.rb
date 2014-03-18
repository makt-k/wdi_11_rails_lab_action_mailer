# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
BooksAppWithMailer::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => '***' ,
  :password => '***' ,
  :domain => 'whatever_or_your_actual_domain',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
