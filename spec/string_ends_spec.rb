require 'rspec'
require 'pry'
require './lib/string_ends?'
#require './lib/completed/string_ends?'

RSpec.describe " checks challenges" do
  it "see if I get the expected string" do
    string1 = 'abc'
    string2 =  'bc'
    compare = StringEnd.new
    expect(compare.solution(string1, string2)).to eq(true)
  end

  it "see if I get the expected array" do
    string1 = 'abc'
    string2 =  'd'
    compare = StringEnd.new
    expect(compare.solution(string1, string2)).to eq(false)
  end
end
