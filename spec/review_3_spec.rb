require_relative '../lib/review_3'

RSpec.describe "Spell Checker" do

  it "tests the truth" do
    expect(true).to eq true
  end

  it "Checks single word" do
    expect(spell_check("dog")).to eq "dog"
  end

  it "Checks single word" do
    expect(spell_check("cat")).to eq "cat"
  end


end
