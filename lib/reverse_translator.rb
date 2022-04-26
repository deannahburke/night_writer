require './lib/dictionary'
require './lib/reverse_translator'

RSpec.describe ReverseTranslator do
  it "exists" do
    reverse_translator = ReverseTranslator.new

    expect(reverse_translator).to be_a(ReverseTranslator)
  end

  

end
