require 'rspec'
require 'pry'
# require './lib/completed/cent_to_year'
require './lib/cent_to_year'

RSpec.describe " checks challenges" do
  it "see if I get the expected sentences" do
    string = "This is an example!"
    check = Reverser.new
    expect(check.reverse_words(string)).to eq("sihT si na !elpmaxe")
  end

end