class Translator
  attr_reader :incoming_text,
              :braille,
              :dictionary

  def initialize(incoming_text, braille)
    @incoming_text = incoming_text
    @braille = braille
    @dictionary = Dictionary.new
  end

  def translate(character)
    if @dictionary.to_braille.include?(character) == false
      "Error! Character not found"
    else
      @dictionary.to_braille[character]
    end
  end

end
