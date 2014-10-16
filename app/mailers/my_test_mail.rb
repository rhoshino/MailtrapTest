#coding: utf-8
class MyTestMail < ActionMailer::Base
  #default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.my_test_mail.sending_mail.subject
  #
  def sending_mail(user)
    @greeting = "Hi"

    mail :to => user.email,
          :subject => "とてもウェルカムでした",
          :from => "notifications@example.com"
  end
  def registration_confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
