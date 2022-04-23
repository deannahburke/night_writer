class Dictionary
  attr_reader :to_braille

  def initialize
    @to_braille = {
      "a" => ["0.", "..",".."]
    }
  end

end
