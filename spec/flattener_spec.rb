require 'rspec'
require 'pry'
require './lib/completed/flattener'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    nested_array = [1, 2, 3, [[4], 5], [[[6]]]]
    flatten_me = Flattner.new
    expect(flatten_me.flattened(nested_array)).to eq([1, 2, 3, 4, 5, 6])
  end

  it "see if I get the expected array" do
    nested_array = [ 0, 1, 2, [ 3, 4 ] ]
    flatten_me = Flattner.new
    expect(flatten_me.flattened(nested_array)).to eq([ 0, 1, 2, 3, 4 ])
  end
end
