message = File.open(ARGV[0], 'r')
incoming_text = message.read
message.close

user_input = ARGV[1]
braille = File.open(ARGV[1], 'w') #creates file object
braille.write(incoming_text.length)
braille.close

character_count = incoming_text.length


p "Created '#{user_input}' containing #{character_count} characters"
