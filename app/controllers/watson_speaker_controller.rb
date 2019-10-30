require "ibm_watson"
require "ibm_watson/authenticators"
require "ibm_watson/text_to_speech_v1"

class WatsonSpeaker < ApplicationController

def watson
puts 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
authenticator = IBMWatson::Authenticators::IamAuthenticator.new(
    apikey: ENV['Text_to_speech']
  )

  text_to_speech = IBMWatson::TextToSpeechV1.new(
    authenticator: authenticator
  )
  text_to_speech.service_url = ENV['Text_to_speech_url']
  
  File::open("public/output.wav", "wb") do |audio_file|
    response = text_to_speech.synthesize(
      text: "king misa est le meilleur du monde",
      accept: "audio/wav",
      voice: "en-US_AllisonVoice"
    ).result
    audio_file << response



    puts 'fdhgdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'
    end
  end
end