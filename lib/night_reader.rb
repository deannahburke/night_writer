require './lib/dictionary.rb'
require './lib/reverse_translator.rb'

reverse_translator = ReverseTranslator.new

braille = File.open(ARGV[0], 'r')
incoming_braille = braille.read
braille.close

english = File.open(ARGV[1], 'w')
english.write(reverse_translator.translate(incoming_braille))
english.close

character_count = incoming_braille.length
p "Created '#{ARGV[1]}' containing #{character_count} characters"
