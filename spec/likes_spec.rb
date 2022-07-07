require 'rspec'
require 'pry'
require './lib/likes'
#require './lib/completed/likes'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    who = []
   
    likable = Liker.new
    expect(likable.likes(who)).to eq("no one likes this")
  end

  it "see if I get the expected array" do
    who = ["Peter"]
   
    likable = Liker.new
    expect(likable.likes(who)).to eq("Peter likes this")
  end

  it "see if I get the expected array" do
    who = ["Jacob", "Alex"]
   
    likable = Liker.new
    expect(likable.likes(who)).to eq("Jacob and Alex like this")
  end

  it "see if I get the expected array" do
    who = ["Max", "John", "Mark"]
   
    likable = Liker.new
    expect(likable.likes(who)).to eq("Max, John and Mark like this")
  end
  
  it "see if I get the expected array" do
    who = ["Alex", "Jacob", "Mark", "Max"]
   
    likable = Liker.new
    expect(likable.likes(who)).to eq("Alex, Jacob and 2 others like this")
  end
end