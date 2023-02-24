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

  it "Checks single word spelled incorrectly" do
    expect(spell_check("ccc")).to eq "~ccc~"
  end

  it "Checks single word spelled incorrectly" do
    expect(spell_check("ddd")).to eq "~ddd~"
  end

  it "Checks two words" do
    expect(spell_check("cat dog")).to eq "cat dog"
  end

  it "Checks two words" do
    expect(spell_check("the nice")).to eq "the nice"
  end

  it "Checks two incorrectly spelt words" do
    expect(spell_check("ttt nnnn")).to eq "~ttt~ ~nnnn~"
  end

  it "Checks case sensitivity" do
    expect(spell_check("cAT")).to eq "cat"
  end

  it "Checks case sensitivity" do
    expect(spell_check("DOG")).to eq "dog"
  end

  it "Checks single word spelled incorrectly, case sensitivity" do
    expect(spell_check("ddD")).to eq "~ddd~"
  end

  it "Checks single word spelled incorrectly, case sensitivity" do
    expect(spell_check("dSS")).to eq "~dss~"
  end

  it "Checks a sentence" do
    expect(spell_check("The quick brown fox jumps over the lazy dog")).to eq "The quick brown fox jumps over the lazy dog".downcase
  end

  it "Checks a sentence" do
    expect(spell_check("The quick bbbbb fox jumps over the lazy dog")).to eq "The quick ~bbbbb~ fox jumps over the lazy dog".downcase
  end
end
