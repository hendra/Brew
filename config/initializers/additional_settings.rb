ActionMailer::Base.smtp_settings = {
  :tls => true,
  :address => "smtp.gmail.com",
  :port => "587",
  :domain => "YOURDOMAIN",
  :authentication => :plain,
  :user_name => "GOOGLEUSERNAME",
  :password => "GOOGLEPASSWORD"
}