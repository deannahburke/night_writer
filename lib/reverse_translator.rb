class ReverseTranslator
  attr_reader :dictionary

  def initialize
    @dictionary = Dictionary.new
  end

  def translate(character)
    @dictionary.to_english[character]
  end
end
