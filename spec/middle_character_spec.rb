require 'rspec'
require 'pry'
require './lib/middle_character'

RSpec.describe " checks challenges" do
  it "gets the middle_character of an odd one" do
    string = "testing"
    malcom = Malcolm.new

    expect(malcom.get_middle(string)).to eq('t')
  end
  it "gets the middle_characters of an even one" do
    string = "test"
    malcom = Malcolm.new
    expect(malcom.get_middle(string)).to eq('es')
  end

  it "gets the middle_characters of an even one" do
    string = "middle"
    malcom = Malcolm.new
    expect(malcom.get_middle(string)).to eq('dd')
  end

  it "gets the middle_characters of an solo char" do
    string = "a"
    malcom = Malcolm.new
    expect(malcom.get_middle(string)).to eq('a')
  end

end
