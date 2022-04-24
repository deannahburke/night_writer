require './lib/dictionary.rb'

message = File.open(ARGV[0], 'r')
incoming_text = message.read.strip
message.close

user_input = ARGV[1]
braille = File.open(ARGV[1], 'w')
dictionary = Dictionary.new(incoming_text)

braille.write(dictionary.look_up(incoming_text))#translate?
braille.close

character_count = incoming_text.length


p "Created '#{user_input}' containing #{character_count} characters"
#this is counting the characters in message.txt, not braille.txt, based on instructions is that what this is supposed to do?  ask in office hours and reference bullet points
