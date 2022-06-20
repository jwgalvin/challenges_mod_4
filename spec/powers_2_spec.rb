require 'rspec'
require 'pry'
require './lib/powers_2'

RSpec.describe " dumb stuff" do
  it "see if I get the expected array" do
    n = 6
    power = MagicPowers.new
    expect(power.powers_case(n)).to eq([1,2,4,8,16,32])
  end

  it "see if I get the expected array" do
    n = 0
    power = MagicPowers.new
    expect(power.powers_case(n)).to eq([1])
  end
  it "see if I get the expected array" do
    n = 1
    power = MagicPowers.new
    expect(power.powers_case(n)).to eq([1, 2])
  end
end
