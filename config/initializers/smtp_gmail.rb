ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => "contextfree9@gmail.com",
  :password             => "gr8grace",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

#if Rails.env.development? 
#ActionMailer::Base.default_url_options[:host] = "localhost:3000" 
#elsif Rails.env.production? 
ActionMailer::Base.default_url_options[:host] = "nameless-depths-8475.herokuapp.com"
#end


#rails plugin install git://github.com/adamwiggins/gmail_smtp.git
#$ heroku config:add GMAIL_SMTP_USER=username@gmail.com
#$ heroku config:add GMAIL_SMTP_PASSWORD=yourpassword
