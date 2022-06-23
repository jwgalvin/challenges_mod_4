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
end
