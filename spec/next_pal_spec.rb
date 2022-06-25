require 'rspec'
require 'pry'
require './lib/completed/next_palindrome'



RSpec.describe " dumb stuff" do

  it "finds palindrome" do
    int = 125
    robot = NextPalidrome.new

    expect(robot.finds_palindromes(int)).to eq(131)
  end

  it "finds palindrome" do
    int = 1231
    robot = NextPalidrome.new

    expect(robot.finds_palindromes(int)).to eq(1331)
  end

  it "finds palindrome" do
    int = 667
    robot = NextPalidrome.new

    expect(robot.finds_palindromes(int)).to eq(676)
  end
end
