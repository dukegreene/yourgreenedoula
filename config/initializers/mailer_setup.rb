
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            'yourgreenedoula@gmail.com',
    password:             ENV['GMAIL_PW'],
    authentication:       'plain',
    enable_starttls_auto: true 
  }