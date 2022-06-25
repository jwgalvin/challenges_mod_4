require 'rspec'
require 'pry'
require './lib/completed/bracket_matcher'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    string = '{}'
    check = PairedBrackets.new
    expect(check.matched_set?(string)).to eq(true)
  end

  it "see if I get the expected array" do
    string = '{()}'
    check = PairedBrackets.new
    expect(check.matched_set?(string)).to eq(true)
  end

  it "see if I get the expected array" do
    string = '({[]}{[]})'
    check = PairedBrackets.new
    expect(check.matched_set?(string)).to eq(true)
  end

  it "see if I get the expected array" do
    string = '{('
    check = PairedBrackets.new
    expect(check.matched_set?(string)).to eq(false)
  end

  it "see if I get the expected array" do
    string = '{[)][]}'
    check = PairedBrackets.new
    expect(check.matched_set?(string)).to eq(false)
  end

  it "see if I get the expected array" do
    string = ']'
    check = PairedBrackets.new
    expect(check.matched_set?(string)).to eq(false)
  end

end
