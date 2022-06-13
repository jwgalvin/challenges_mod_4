require 'rspec'
require 'pry'
require './lib/last_digit'

RSpec.describe " dumb stuff" do
  it "test to see how far off I am" do
    int = [2,0,8]
    last = LastDigit.new
    #binding.pry
    expect(last.the_thing(int)).to eq(2)
  end
end
