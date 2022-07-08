require 'rspec'
require 'pry'
#require './lib/completed/detect_pangram'
require './lib/detect_pangram'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    member_list = "Nymphs blitz quick vex dwarf jog"
    check = Pangram.new
    expect(check.pangram?(string)).to eq(true])
  end
end