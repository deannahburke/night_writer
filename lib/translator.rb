class Translator
   attr_reader :dictionary

  def initialize
    @dictionary = Dictionary.new
  end

  def translate(character)
    message = character.chars
    message.map do |character|
      if @dictionary.to_braille.include?(character) == false
        "Error! Character not found"
      else
        @dictionary.to_braille[character]
      end
    end
  end

  def format_braille(character)
    test = translate(character)#.map do for top, middle, bottom
    finished_letter = ""
    test.each do |element|
      top = ""
      middle = ""
      bottom = ""
      top << element[0]
      middle << element[1]
      bottom << element[2]
      finished_letter << ("#{top}\n""#{middle}\n""#{bottom}\n")
    end
    finished_letter
  end
end
