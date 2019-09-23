class TwilioTextMessenger
  attr_reader :message

  def initialize(message , phone="+12404233542")
    @message = message
    @phone = phone
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: Rails.application.credentials.twilio[:twilio_phone_number],
      to: @phone,
      body: @message
    })
  end
end
