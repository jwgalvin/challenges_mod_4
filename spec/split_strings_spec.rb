require 'rspec'
require 'pry'
require './lib/completed/split_strings'

RSpec.describe " checks challenges" do
  it "splits a string into an array" do
    string = 'abc'
    split_me = Splitter.new
    expect(split_me.solution(string)).to eq(['ab', 'c_'])
  end

  it "splits a string into an array" do
    string = 'abcdef'
    split_me = Splitter.new
    expect(split_me.solution(string)).to eq(['ab', 'cd', 'ef'])
  end
end
