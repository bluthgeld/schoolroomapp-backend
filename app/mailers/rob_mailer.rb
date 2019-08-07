class RobMailer < ApplicationMailer

  default from: 'notification@schoolroom.app'

  def welcome(recipient)
      @recipient = recipient
      mail(to: recipient,
           subject: "[Signed up] Welcome #{recipient}",
           body: "This is a Successful Test.")
  end

end
