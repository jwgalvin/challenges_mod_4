require 'rspec'
require 'pry'
require './lib/powers_2'

RSpec.describe " dumb stuff" do
  it "see if I get the expected array" do
    n = 6
    power = MagicPowers.new
    binding.pry
    expect(power.powers_of_2(n)).to eq([1,2,4,8,16,32])
  end
end
