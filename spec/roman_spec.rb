require 'rspec'
require 'pry'
require './lib/roman_numeral'

RSpec.describe " dumb stuff" do

  it "test to see how far off I am" do
    int = 428
    roman = RomanNumeralConverter.new

    expect(roman.to_roman(int)).to eq("CDXXVIII")
  end

  it "test to see how far off I am" do
    int = 3999
    roman = RomanNumeralConverter.new

    expect(roman.to_roman(int)).to eq("MMMCMXCIX")
  end

  it "test to see how far off I am" do
    int = 666
    roman = RomanNumeralConverter.new

    expect(roman.to_roman(int)).to eq("DCLXVI")
  end

  it "test to see how far off I am" do
    int = 69
    roman = RomanNumeralConverter.new

    expect(roman.to_roman(int)).to eq("LXIX")
  end
end
