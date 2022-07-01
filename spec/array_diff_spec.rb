require 'rspec'
require 'pry'
#require './lib/completed/Array_diff'
require './lib/Array_diff'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    arrays = [1,2],[1]
    check = PairedBrackets.new
    expect(check.matched_set?(string)).to eq(true)
  end
  
end