require './lib/dictionary.rb'
require './lib/translator.rb'

message = File.open(ARGV[0], 'r')
incoming_text = message.read.strip
message.close

# user_input = ARGV[1]
braille = File.open(ARGV[1], 'w')
translator = Translator.new 

braille.write(translator.translate(incoming_text))
braille.close

character_count = incoming_text.length


p "Created '#{ARGV[1]}' containing #{character_count} characters"
#this is counting the characters in message.txt, not braille.txt, based on instructions is that what this is supposed to do?  ask in office hours and reference bullet points
