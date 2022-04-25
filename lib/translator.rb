class Translator
  attr_reader :incoming_text,
              :braille,
              :dictionary

  def initialize
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

  def format_braille(character)
    if @dictionary.to_braille.include?(character) == false
      "Error! Character not found"
    else
      top = ""
      middle = ""
      bottom = ""
      top << @dictionary.to_braille[character][0]
      middle << @dictionary.to_braille[character][1]
      bottom  << @dictionary.to_braille[character][2]
      finished_letter =("#{top}\n""#{middle}\n""#{bottom}")
    end
  end

end
