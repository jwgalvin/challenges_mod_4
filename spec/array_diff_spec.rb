require 'rspec'
require 'pry'
require './lib/ruby_challenges/completed/Array_diff'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    a = [1,2]
    b = [1]
    check = Difference.new
    expect(check.array_diff(a, b)).to eq([2])
  end

  it "see if I get the expected array" do
    a = [1,2,2]
    b = [2]
    check = Difference.new
    expect(check.array_diff(a, b)).to eq([1])
  end
  
end