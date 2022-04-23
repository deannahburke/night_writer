require './lib/dictionary'

RSpec.describe Dictionary do
  it "exists" do
    dictionary = Dictionary.new('a')

    expect(dictionary).to be_a(Dictionary)
  end

  it "has attributes"do
    dictionary = Dictionary.new('a')

    expect(dictionary.to_braille).to be_a(Hash)
    expect(dictionary.incoming_text).to eq('a')
  end

  it "can read alphabet hash" do
    dictionary = Dictionary.new('a')

    expect(dictionary.to_braille['a']).to eq(["0.", "..", ".."])
    expect(dictionary.to_braille['k']).to eq(["0.", "..", "0."])
    expect(dictionary.to_braille['u']).to eq(["0.", "..", "00"])
    expect(dictionary.to_braille[" "]).to eq(["..", "..", ".."])
  end

  it "can translate incoming text" do
    dictionary = Dictionary.new('a')

    expect(dictionary.translate('a')).to eq(["0.", "..", ".."])
    expect(dictionary.translate('k')).to eq(["0.", "..", "0."])
    expect(dictionary.translate('u')).to eq(["0.", "..", "00"])
    expect(dictionary.translate(" ")).to eq(["..", "..", ".."])
  end

end
