# In this challenge, you are working with a computer simulation of a mobile robot. The robot moves on a plane, and its movements are described by a command string consisting of one or more of the following letters:
#
# G instructs the robot to move forward one step
# L instructs the robot to turn left
# R instructs the robot to turn right
# The robot CANNOT go backwards - poor robot. After running all of the movement commands, you want to know if the robot returns to its original starting location.
#
#     #Ruby
#     return_to_origin?("GRGRGRG")
#     => true

#Assuming North is the starting direction for all directions
#assume 2 dimensional movement on X,Y Axis, and only 'L', 'R', or 'G' are valid instructions.
# Return "returned home" or "lost in the gloom"
require 'pry'

class LoveDeathNRobots

  def initialize
    @init_X = 0
    @init_Y = 0
  end

  def return_to_origin(orders)
    commands = orders.chars  #cap may not be necessary
    x = @init_X
    y = @init_Y
    results = ["Robot returned home", "Robot died in the wastes"]
    @direction = "N"
    while commands.count > 0
      #binding.pry

    if commands[0] == "R"
      if commands[0] == "R" && @direction == "N"
        @direction = "E"
        #commands.shift
        #binding.pry
      elsif commands[0] == "R" && @direction == "E"
        @direction = "S"
        #commands.shift
        #binding.pry
      elsif commands[0] == "R" && @direction == "S"
        @direction = "W"
        #commands.shift
        #binding.pry
      else commands[0] == "R" && @direction == "W"
        @direction = "N"

      end
      commands.shift
    elsif commands[0] == "L"
      if commands[0] == "L" && @direction == "N"
        @direction = "W"
      elsif commands[0] == "L" && @direction == "W"
        @direction = "S"
      elsif commands[0] == "L" && @direction == "S"
        @direction = "E"
      else commands[0] == "L" && @direction == "E"
        @direction = "N"
      end
      commands.shift
    elsif commands[0] == "G"
      if commands[0] == "G" && @direction == "N"
        y += 1
      elsif commands[0] == "G" && @direction == "E"
        x += 1
      elsif commands[0] == "G" && @direction == "S"
        y -= 1
      elsif commands[0] == "G" && @direction == "W"
        x -= 1
      end
      commands.shift
    end
  end
    if x == 0 && y == 0
      puts results[0]
      return results[0]
    else
      puts results[1]
      return results[1]
    end
end
end
