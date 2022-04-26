require './lib/dictionary'
require './lib/reverse_translator'

RSpec.describe ReverseTranslator do
  it "exists" do
    reverse_translator = ReverseTranslator.new

    expect(reverse_translator).to be_a(ReverseTranslator)
  end

  it "can translate braille to english characters" do
    reverse_translator = ReverseTranslator.new

    expect(reverse_translator.translate(["0.", "..",".."])).to eq("a")
  end

end
