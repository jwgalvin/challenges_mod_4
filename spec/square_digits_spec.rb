require 'rspec'
require 'pry'
require './lib/square_digits'
#require './lib/completed/square_digits'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    int = 9119
   
    to_sq = SquareEach.new
    expect(to_sq.square_digits(int)).to eq(811181)
  end
  
end