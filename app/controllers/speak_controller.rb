
require "ibm_watson"
require "ibm_watson/authenticators"
require "ibm_watson/text_to_speech_v1"

class SpeakController < ApplicationController

def watson
puts 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
authenticator = IBMWatson::Authenticators::IamAuthenticator.new(
    apikey: ENV['Text_to_speech']
  )

  text_to_speech = IBMWatson::TextToSpeechV1.new(
    authenticator: authenticator
  )
  text_to_speech.service_url = "https://stream.watsonplatform.net/text-to-speech/api"
  
  File::open("public/output.wav", "wb") do |audio_file|
    response = text_to_speech.synthesize(
      text: "miguel is a big shit head",
      accept: "audio/wav",
      voice: "en-US_AllisonVoice"
    ).result
    audio_file << response



    puts 'fdhgdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'
    end
  end
end