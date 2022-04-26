require './lib/dictionary'

RSpec.describe Dictionary do
  it "exists" do
    dictionary = Dictionary.new

    expect(dictionary).to be_a(Dictionary)
  end

  it "has attributes"do
    dictionary = Dictionary.new

    expect(dictionary.to_braille).to be_a(Hash)
  end

  it "can read alphabet hash" do
    dictionary = Dictionary.new

    expect(dictionary.to_braille["a"]).to eq(["0.", "..", ".."])
    expect(dictionary.to_braille["k"]).to eq(["0.", "..", "0."])
    expect(dictionary.to_braille["u"]).to eq(["0.", "..", "00"])
    expect(dictionary.to_braille[" "]).to eq(["..", "..", ".."])
  end

  it "can read inverted English hash" do
    dictionary = Dictionary.new

    expect(dictionary.to_english).to be_a(Hash)
    expect(dictionary.to_english[["0.", "..",".."]]).to eq("a")
    expect(dictionary.to_english[["0.", "..", "0."]]).to eq("k")
    expect(dictionary.to_english[["0.", "..", "00"]]).to eq("u")
    expect(dictionary.to_english[["..", "..", ".."]]).to eq(" ")
  end

end
