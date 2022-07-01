require 'rspec'
require 'pry'
#require './lib/completed/Array_diff'
require './lib/Array_diff'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    a = [1,2]
    b = [1]
    check = Difference.new
    expect(arrays.array)diff(a, b)).to eq([2])
  end
  
  
end