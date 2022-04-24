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

  it "can look up braille character of incoming text" do
    dictionary = Dictionary.new('a')

    expect(dictionary.look_up("a")).to eq(["0.", "..", ".."])
    expect(dictionary.look_up("k")).to eq(["0.", "..", "0."])
    expect(dictionary.look_up("u")).to eq(["0.", "..", "00"])
    expect(dictionary.look_up(" ")).to eq(["..", "..", ".."])
    expect(dictionary.look_up("A")).to eq("Error! Character not found")
  end

end
