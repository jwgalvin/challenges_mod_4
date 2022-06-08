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
    @results = ["Robot returned home", "Robot died in the wastes"]
  end

  def check_home(x,y)
    if x == 0 && y == 0
      return @results[0]
    else
      return @results[1]
    end
  end

  def turn_right(direction)
    if direction == "N"
      @direction = "E"
    elsif direction == "E"
      @direction = "S"
    elsif direction == "S"
      @direction = "W"
    elsif direction == "W"
      @direction = "N"
    end
  end

  def turn_left(direction)
    if direction == "N"
      @direction = "W"
    elsif direction == "W"
      @direction = "S"
    elsif direction == "S"
      @direction = "E"
    elsif direction == "E"
      @direction = "N"
    end
  end

  def move_fwd(direction, x, y)
    if direction == "N"
      @y = y += 1
    elsif direction == "E"
      @x = x += 1
    elsif direction == "S"
      @y = y -= 1
    elsif direction == "W"
      @x = x -= 1
    end
  end

  def return_to_origin(orders)
    commands = orders.chars  #cap may be necessary
    @x = 0
    @y = 0
    @direction = "N"
    while commands.count > 0
      if commands[0] == "R"
        turn_right(@direction)
        commands.shift
      elsif commands[0] == "L"
        turn_left(@direction)
        commands.shift
      elsif commands[0] == "G"
        move_fwd(@direction, @x, @y)
        commands.shift
      end
    end
    check_home(@x,@y)
  end

end
