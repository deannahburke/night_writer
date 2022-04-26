require './lib/dictionary.rb'


braille = File.open(ARGV[0], 'r')
incoming_braille = braille.read
braille.close

english = File.open(ARGV[1], 'w')
english.write
english.close

character_count = incoming_braille.length
p "Created '#{ARGV[1]}' containing #{character_count} characters"
