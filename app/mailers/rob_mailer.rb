class RobMailer < ApplicationMailer

  default from: 'schoolroom@tiwygwymw.us'

  def welcome(recipient)
      @recipient = recipient
      mail(to: recipient,
           subject: "[Signed up] Welcome #{recipient}",
           body: "This is a Successful Test.")
  end


  def announcement(recipient, subject, body)
      @recipient = recipient
      @subject = subject
      @body = body
      mail(to: recipient,
           subject: "#{subject}",
           body: "#{body}")
  end

end
