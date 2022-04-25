require './lib/dictionary'
require './lib/translator'

RSpec.describe Translator do
  it "exists" do
    translator = Translator.new

    expect(translator).to be_a(Translator)
  end

  it "can translate a single character" do
    translator = Translator.new

    expect(translator.translate('a')).to eq(["0.", "..",".."])
    expect(translator.translate('k')).to eq(["0.", "..", "0."])
    expect(translator.translate('u')).to eq(["0.", "..", "00"])
    expect(translator.translate(' ')).to eq(["..", "..", ".."])
    expect(translator.translate('A')).to eq("Error! Character not found")
  end

  it "can split braille character into rows" do
    translator = Translator.new

    expect(translator.format_braille('a')).to eq("0.\n..\n..")
    expect(translator.format_braille('k')).to eq("0.\n..\n0.")
    expect(translator.format_braille('A')).to eq("Error! Character not found")
  end

  xit "can translate multiple characters" do

  end


end
