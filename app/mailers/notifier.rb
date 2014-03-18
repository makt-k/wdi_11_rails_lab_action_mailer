class Notifier < ActionMailer::Base
  def greeting_notification(form_input)
    @greeting = form_input
      mail(to: "anna.tsykalova@gmail.com",
        from: form_input.visit_email,
        subject: form_input.subject)
  end


  def send_welcome_message(user)
    @user = user
    mail(to: user.email,
      from: 'welcome@gmail.com',
      subject: 'Welcome to my App')
  end

  def send_buyer_message(user)
    @user = user
    mail(to: user.email,
      from: 'seller@gmail.com',
      subject: 'Your order has been placed.')
  end
end
