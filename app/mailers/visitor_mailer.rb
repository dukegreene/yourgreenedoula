class VisitorMailer < ActionMailer::Base
  default from: "yourgreenedoula@gmail.com"

  def thank_you_email(visitor)
    @visitor = visitor
    @url  = 'http://yourgreenedoula.com'
    mail(to: @visitor.email, subject: 'Thanks for your email!')
  end
end

