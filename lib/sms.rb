require "bundler"
Bundler.require()

class Sms
  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']

  @client = Twilio::REST::Client.new(account_sid, auth_token)

  @client.messages.create(
    to: ENV['MY_PHONE_NUMBER'],
    from: ENV['TWILIO_PHONE_NUMBER'],
    body: "Thank you! Your order was placed and will be delivered within one hour."
  )
end
