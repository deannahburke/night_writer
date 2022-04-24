require './lib/dictionary'
require './lib/translator'

RSpec.describe Translator do
  it "exists" do
    translator = Translator.new('a', ["0.", "..",".."])

    expect(translator).to be_a(Translator)
  end

  it "has attributes" do
    translator = Translator.new('a', ["0.", "..",".."])

    expect(translator.incoming_text).to eq('a')
    expect(translator.braille).to eq(["0.", "..",".."])
  end

end
