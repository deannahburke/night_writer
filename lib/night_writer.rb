require './lib/dictionary.rb'
require './lib/translator.rb'

translator = Translator.new

message = File.open(ARGV[0], 'r')
incoming_text = message.read.strip
message.close

braille = File.open(ARGV[1], 'w')
braille.write(translator.format_braille(incoming_text))
braille.close

character_count = incoming_text.length
p "Created '#{ARGV[1]}' containing #{character_count} characters"
