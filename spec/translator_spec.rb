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

  it "can translate a single character" do
    translator = Translator.new('a', ["0.", "..",".."])

    expect(translator.translate('a')).to eq(["0.", "..",".."])
    expect(translator.translate('k')).to eq(["0.", "..", "0."])
    expect(translator.translate('u')).to eq(["0.", "..", "00"])
    expect(translator.translate(" ")).to eq(["..", "..", ".."])
    expect(translator.translate("A")).to eq("Error! Character not found")
  end

end
