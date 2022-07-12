require 'rspec'
require 'pry'
require './lib/ruby_challenges/completed/palindromic_sum'



RSpec.describe " dumb stuff" do

  it "finds palindrome" do
    int = 125
    robot = PalindromeSum.new
    expect(robot.math_palindrome).to eq([209,308,407,506,605,704,803,902,1000,1001,1002,1003,1004,1005,1006,1007,1008,1010,1011,1012,1013,1014,1015,1016,1017])

  end
end
