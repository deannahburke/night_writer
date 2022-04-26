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
    expect(translator.translate('A')).to eq(["NIL"])
  end

  it "can split braille characters into top row" do
    translator = Translator.new

    expect(translator.top_row('a')).to eq('0.')
    expect(translator.top_row('b')).to eq('0.')
    expect(translator.top_row('ab')).to eq('0.0.')
  end

  it "can split braille characters into middle row" do
    translator = Translator.new

    expect(translator.middle_row('a')).to eq('..')
    expect(translator.middle_row('b')).to eq('0.')
    expect(translator.middle_row('ab')).to eq('..0.')
  end

  it "can split braille characters into bottom row" do
    translator = Translator.new

    expect(translator.bottom_row('a')).to eq('..')
    expect(translator.bottom_row('b')).to eq('..')
    expect(translator.bottom_row('ab')).to eq('....')
  end

  it "can split braille character into rows" do
    translator = Translator.new

    expect(translator.format_braille('ab')).to eq("0.0.\n..0.\n....\n")
    expect(translator.format_braille('a')).to eq("0.\n..\n..\n")
    expect(translator.format_braille('k')).to eq("0.\n..\n0.\n")
  end
end
