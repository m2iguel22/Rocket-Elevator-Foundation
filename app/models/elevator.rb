require 'twilio-ruby'

class Elevator < ApplicationRecord

    belongs_to :column



    after_update :status_change 
    class TwilioTextMessenger
        attr_reader :message
        def initialize(message)
            @message = message
         end
            def call
             client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
             client.messages.create({
                 from: '+12055062996',
                 to: '+15819856402',
                 body: message
                 })
        end
     end

   def status_change
    if status == "Intervention"   
        message = "The elevator #{id} status has changed" 
        TwilioTextMessenger.new(message).call
    end
   end
end