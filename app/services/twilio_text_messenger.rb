
class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    @client = Twilio::REST::Client.new(ENV['twilio_account_sid'], ENV['twilio_auth_token'])

    @client.messages.create({
      from: '+33757914205',
      to: '+33782873788',
      body: @message
    })
  end
end
