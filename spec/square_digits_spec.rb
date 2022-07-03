require 'rspec'
require 'pry'
require './lib/Array_diff'
require './lib/completed/Array_diff'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    int = 9119
   
    to_sq = SquareEach.new
    expect(to_sq.square_digits(int)).to eq([2])
  end

#   it "see if I get the expected array" do
#     a = [1,2,2]
#     b = [2]
#     check = Difference.new
#     expect(check.array_diff(a, b)).to eq([1])
#   end
  
end