require 'rspec'
require 'pry'
#require './lib/find_missing'
require './lib/completed/find_missing'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    int = 2
   
    sum_me = Summation.new
    expect(sum_me.summation(int)).to eq(3)
  end

  it "see if I get the expected array" do
    int = 8
   
    sum_me = Summation.new
    expect(sum_me.summation(int)).to eq(8)
  end
end