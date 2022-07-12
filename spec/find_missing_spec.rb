require 'rspec'
require 'pry'
require './lib/ruby_challenges/completed/find_missing'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    array = [1, 3, 5, 9, 11]
   
    absent_father = FindMissing.new
    expect(absent_father.find_missing(array)).to eq(7)
  end
  
  it "see if I get the expected array" do
    array = [1, 3, 4, 5, 6, 7, 8, 9]
   
    absent_father = FindMissing.new
    expect(absent_father.find_missing(array)).to eq(2)
  end
end