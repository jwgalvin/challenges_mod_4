require 'rspec'
require 'pry'
require './lib/ruby_challenges/completed/keep_hydrated'

RSpec.describe " checks challenges" do
  it "see if I round the right way" do
    time = 3
    water_needed = Hydrate.new
    expect(water_needed.litres(time)).to eq(1)
  end

  it "see if I round the right way" do
    time = 6.7
    water_needed = Hydrate.new
    expect(water_needed.litres(time)).to eq(3)
  end

  it "see if I round the right way" do
    time = 11.8
    water_needed = Hydrate.new
    expect(water_needed.litres(time)).to eq(5)
  end
end
