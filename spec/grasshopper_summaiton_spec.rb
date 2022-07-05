require 'rspec'
require 'pry'
#require './lib/grass_summation'
require './lib/completed/grass_summation'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    int = 2
   
    sum_me = Summation.new
    expect(sum_me.summation(int)).to eq(3)
  end

  it "see if I get the expected array" do
    int = 8
   
    sum_me = Summation.new
    expect(sum_me.summation(int)).to eq(36)
  end
end