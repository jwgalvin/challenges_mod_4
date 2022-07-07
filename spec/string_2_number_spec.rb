require 'rspec'
require 'pry'
#require './lib/likes'
require './lib/completed/likes'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    num_str = "1234"
   
    converter = StringToInt.new
    expect(converter.string_to_number(num_str)).to eq(1234)
  end
