require 'morse'

RSpec.describe "Possibilities" do
  it "should work on basic cases" do
    expect(possibilities(".")).to eq(["E"])
    expect(possibilities(".-")).to eq(["A"])
  end

  it "should work on words with a single unknown signal" do
    expect(possibilities("?")).to eq(["E","T"])
    expect(possibilities("?.")).to eq(["I","N"])
    expect(possibilities(".?")).to eq(["I","A"])
  end
end


