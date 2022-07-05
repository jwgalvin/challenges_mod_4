require 'rspec'
require 'pry'
require './lib/completed/find_even_index'

RSpec.describe " checks challenges" do
  it "see if I get the expected result" do
    array = [1,2,3,4,3,2,1]
   
    even = FindEven.new
    expect(even.find_even_index(array)).to eq(3)
  end

  it "see if I get the expected result" do
    array = [1,100,50,-51,1,1]
   
    even = FindEven.new
    expect(even.find_even_index(array)).to eq(1)
  end
  it "see if I get the expected result" do
    array = [20,10,-80,10,10,15,35]
   
    even = FindEven.new
    expect(even.find_even_index(array)).to eq(0)
  end
end