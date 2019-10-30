require "json"
require "ibm_watson/authenticators"
require "ibm_watson/text_to_speech_v1"

authenticator = IBMWatson::Authenticators::IamAuthenticator.new(
    apikey: "{Text_to_speech}"
  )

  text_to_speech = IBMWatson::TextToSpeechV1.new(
    authenticator: authenticator
  )
  text_to_speech.service_url = "{Text_to_speech_url}"
  
  puts JSON.pretty_generate(text_to_speech.list_voices.result)
  
  File.new("output.wav", "w+") do |audio_file|
    response = text_to_speech.synthesize(
      text: "",
      accept: "audio/wav",
      voice: "en-US_AllisonVoice"
    ).result
    audio_file << response
  end


  class TextToSpeechV1 < 
  def initialize
    super
  end 