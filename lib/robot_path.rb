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
class LoveDeathNRobots

  def initialize
    @init_X = 0
    @init_Y = 0
  end

  def return_to_origin(orders)
    commands = orders.chars.capitalize()  #cap may not be necessary
    x = @init_X
    y = @init_Y
    results = ["Robot returned home", "Robot died in the wastes"]
    while commands.count > 0
      case orders
      when commands[0] == "G"
        if order == "G" && direction == "N"
          y += 1
          commands = commands.shift
        elsif order == "G" && direction == "E"
          x += 1
          commands = commands.shift
        elsif order == "G" && direction == "S"
          y -= 1
          commands = commands.shift
        else order == "G" && direction == "W"
          x -= 1
          commands = commands.shift
        end
      end

      when commands[0] == "L"
        if direction == "N"
          direction = "W"
          commands = commands.shift
        elsif direction == "W"
          direction = "S"
          commands = commands.shift
        elsif direction == "S"
          direction = "E"
          commands = commands.shift
        else
          direction = "N"
          commands = commands.shift
        end
      end

      when commands[0] == "R"
        if direction == "N"
          direction = "E"
          commands = commands.shift
        elsif direction == "E"
          direction = "S"
          commands = commands.shift
        elsif direction == "S"
          direction = "W"
          commands = commands.shift
        else
          direction = "N"
          commands = commands.shift
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
