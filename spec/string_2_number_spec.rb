require 'rspec'
require 'pry'
#require './lib/ruby_challenges/string_2_number'
require './lib/ruby_challenges/completed/string_2_number'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    num_str = "1234"
   
    converter = StringToInt.new
    expect(converter.string_to_number(num_str)).to eq(1234)
  end
    
  it "see if I get the expected array" do
    num_str = "605"
   
    converter = StringToInt.new
    expect(converter.string_to_number(num_str)).to eq(605)
  end
  it "see if I get the expected array" do
    num_str = "1405"
   
    converter = StringToInt.new
    expect(converter.string_to_number(num_str)).to eq(1405)
  end
  it "see if I get the expected array" do
    num_str = "-7"
   
    converter = StringToInt.new
    expect(converter.string_to_number(num_str)).to eq(-7)
  end
end