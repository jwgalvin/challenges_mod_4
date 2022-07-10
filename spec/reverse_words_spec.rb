require 'rspec'
require 'pry'
require './lib/completed/reverse_words'


RSpec.describe " checks challenges" do
  it "see if I get the expected sentences" do
    string = "This is an example!"
    check = Reverser.new
    expect(check.reverse_words(string)).to eq("sihT si na !elpmaxe")
  end
  it "see if I get the expected sentences" do
    string = "double  spaces"
    check = Reverser.new
    expect(check.reverse_words(string)).to eq("elbuod  secaps")
  end


end