require 'rspec'
require 'pry'
require './lib/7ate9'

RSpec.describe " checks challenges" do
  it "remove the 9's that are surrounded by 7's" do
    string = "79712312"
    hungry = HungrySevens.new

    expect(hungry(string)).to eq("7712312")
  end

  it "remove the 9's that are surrounded by 7's" do
    string = "79797"
    hungry = HungrySevens.new

    expect(hungry(string)).to eq("777")
  end
end
