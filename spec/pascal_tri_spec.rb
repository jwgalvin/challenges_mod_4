require 'rspec'
require 'pry'
require './lib/pascals_triangle'

RSpec.describe " checks challenges" do
  it "see if I get the 1st expected array" do
    row = 1
    pascal = PascalTri.new

    expect(pascal.pascalsTriangle(row)).to eq([1])
  end

  it "see if I get the 2nd expected array" do
    row = 2
    pascal = PascalTri.new

    expect(pascal.pascalsTriangle(row)).to eq([1,1, 1])
  end
  it "see if I get the 4th expected array" do
    row = 3
    pascal = PascalTri.new

    expect(pascal.pascalsTriangle(row)).to eq([1,1, 1, 1, 2, 1])
  end

  it "see if I get the 4th expected array" do
    row = 4
    pascal = PascalTri.new

    expect(pascal.pascalsTriangle(row)).to eq([1, 1, 1, 1, 2, 1, 1, 3, 3, 1])
  end
end
