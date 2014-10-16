require 'test_helper'

class MyTestMailTest < ActionMailer::TestCase
  test "sending_mail" do
    mail = MyTestMail.sending_mail
    assert_equal "Sending mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
