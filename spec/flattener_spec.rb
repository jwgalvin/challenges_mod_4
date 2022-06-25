require 'rspec'
require 'pry'
require './lib/bracket_matcher'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    nested_array = [1, 2, 3, [[4], 5], [[[6]]]]
    flatten_me = Flattener.new
    expect(nested_array.matched_set?(string)).to eq([1, 2, 3, 4, 5, 6])
  end
  
end
