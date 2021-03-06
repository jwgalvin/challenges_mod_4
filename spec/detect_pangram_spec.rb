require 'rspec'
require 'pry'
require './lib/ruby_challenges/completed/detect_pangram'


RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    string = "Nymphs blitz quick vex dwarf jog"
    check = Pangram.new
    expect(check.pangram?(string)).to eq(true)
  end

  it "see if I get the expected array" do
    string = "A quick brown fox jumps over the lazy dog"
    check = Pangram.new
    expect(check.pangram?(string)).to eq(true)
  end

  it "returns false" do
    string = "A quick brown fox jumps over the lazy"
    check = Pangram.new
    expect(check.pangram?(string)).to eq(false)
  end
end