require 'rspec'
require 'pry'
# require './lib/completed/cent_to_year'
require './lib/cent_to_year'

RSpec.describe " checks challenges" do
  it "see if I get the expected int" do
    int = 1705
    check = CentYear.new
    expect(check.century(int)).to eq(18)
  end

  it "see if I get the expected int" do
    int = 1900
    check = CentYear.new
    expect(check.century(int)).to eq(19)
  end
end