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

  def top_row(character)
    top = translate(character).map {|element| element[0]}.join
  end

  def middle_row(character)
    middle = translate(character).map {|element| element[1]}.join
  end

  def bottom_row(character)
    bottom = translate(character).map {|element| element[2]}.join
  end

  def format_braille(character)
    finished_format = ""
    top = ""
    middle = ""
    bottom = ""
    top << top_row(character)
    middle << middle_row(character)
    bottom << bottom_row(character)
    finished_format << ("#{top}\n""#{middle}\n""#{bottom}\n")
  end
end
