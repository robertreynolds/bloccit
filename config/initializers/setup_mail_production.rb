if Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV['app21881181@heroku.com'],
    :password       => ENV['04hzohrh'],
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }
end