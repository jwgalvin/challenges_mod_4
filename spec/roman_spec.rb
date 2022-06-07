require 'rspec'
require 'pry'
require './lib/roman_numeral'

RSpec.describe " dumb stuff" do

  it "test to see how far off I am" do
    int = 428
    roman = RomanNumeralConverter.new
    #binding.pry
    expect(roman.to_roman(int)).to eq("CDXXVIII")
  end
end
