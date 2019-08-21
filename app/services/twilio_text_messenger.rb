class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: Rails.application.credentials.twilio[:twilio_phone_number],
      to: Rails.application.credentials.twilio[:my_phone_number],
      body: message
    })
  end
end
