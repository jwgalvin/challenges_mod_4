require 'rspec'
require 'pry'
require './lib/robot_path'



RSpec.describe " dumb stuff" do

  it "test to see how far off I am" do
    directions = "GRGRGRG"
    robot = LoveDeathNRobots.new

    expect(robot.return_to_origin(directions)).to eq("Robot returned home")
  end

end
