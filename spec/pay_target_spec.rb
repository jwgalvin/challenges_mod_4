require 'rspec'
require 'pry'
require './lib/target_and_payload'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    solution = [1, 3, 4, 5, 10]
    target = 15

    red_october = TargetPayload.new
    expect(red_october.find_target(solution, target)).to eq([5,10])
  end

  it "see if I get the expected array" do
    solution = [-1, -3, 4, 7, -5, 18, 10, -23, 5]
    target = 15

    red_october = TargetPayload.new
    expect(red_october.find_target(solution, target)).to eq([-3,18])
  end

  it "see if I get the expected array" do
    solution = [-3, -34, 2, 6, 40, -4]
    target = 1

    red_october = TargetPayload.new
    expect(red_october.find_target(solution, target)).to eq([])
  end

  it "see if I get the expected array" do
    solution = [-3, 4, 2, 6, 40, -4]
    target = 8

    red_october = TargetPayload.new
    expect(red_october.find_target(solution, target)).to eq([2, 6])
  end
end
