require './lib/dictionary'
require './lib/translator'

RSpec.describe Translator do
  it "exists" do
    translator = Translator.new

    expect(translator).to be_a(Translator)
  end

  it "changes 'a' to braille character" do
    translator = Translator.new

    expect(tranlsator.translate('a')).to eq(["0.", "..",".."])
  end

end
