require './lib/dictionary'
require './lib/translator'

RSpec.describe Translator do
  it "exists" do
    translator = Translator.new

    expect(translator).to be_a(Translator)
  end

  it "can translate characters" do
    translator = Translator.new

    expect(translator.translate('a')).to eq([["0.", "..",".."]])
    expect(translator.translate(' ')).to eq([["..", "..", ".."]])
    expect(translator.translate('ab')).to eq([["0.", "..",".."], ["0.", "0.", ".."]])
    expect(translator.translate('A')).to eq(["Error! Character not found"])
  end

  it "can split braille characters into top row" do
    translator = Translator.new
    
    expect(translator.top_row('a')).to eq('0.')
    expect(translator.top_row('b')).to eq('0.')
    expect(translator.top_row('ab')).to eq('0.0.')
  end

  xit "can split braille character into rows" do
    translator = Translator.new

    expect(translator.format_braille('ab')).to eq("0.\n..\n.."), ("0.\n0.\n..")
    expect(translator.format_braille('a')).to eq("0.\n..\n..")
    expect(translator.format_braille('k')).to eq("0.\n..\n0.")
    expect(translator.format_braille('A')).to eq("Error! Character not found")
  end


end
