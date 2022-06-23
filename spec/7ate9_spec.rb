require 'rspec'
require 'pry'
require './lib/7ate9'

RSpec.describe " checks challenges" do
  it "remove the 9's that are surrounded by 7's" do
    string = "79712312"
    hungry = HungrySevens.new

    expect(hungry.seven_ate9(string)).to eq("7712312")
  end

  it "remove the 9's that are surrounded by 7's" do
    string = "79797"
    hungry = HungrySevens.new
    expect(hungry.seven_ate9(string)).to eq("777")
  end

  it "remove the 9's that are surrounded by 7's" do
    string = "799797"
    hungry = HungrySevens.new
    expect(hungry.seven_ate9(string)).to eq("79977")
  end

  it "tests for 0's" do
    string = "0799797"
    hungry = HungrySevens.new
    expect(hungry.seven_ate9(string)).to eq("079977")
  end
end
