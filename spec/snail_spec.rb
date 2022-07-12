require 'rspec'
require 'pry'
require './lib/ruby_challenges/completed/snail'

RSpec.describe " checks challenges" do
  it "sorts the array logarthimatically?" do
    array = [[1, 2, 3],
             [4, 5, 6],
             [7, 8, 9]]
    snail = SnailSort.new
    expect(snail.snail_sort(array)).to eq([1, 2, 3, 6, 9, 8, 7, 4, 5])
  end
end
