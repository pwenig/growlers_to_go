class UserNotifier < ActionMailer::Base
  default from: "brewmaster@growlers2go.com"

  def send_signup_email(user)
    @user = user
    mail(:to => @user.email,
         :subject => 'Thank you for joining Growlers 2 Go')
  end

end
