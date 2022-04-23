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


end
