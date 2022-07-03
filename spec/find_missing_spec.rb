require 'rspec'
require 'pry'
require './lib/find_missing'
#require './lib/completed/find_missing'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    array = [1, 3, 5, 9, 11]
   
    absent_father = FindMissing.new
    expect(absent_father.find_missing(array)).to eq(7)
  end
  
end