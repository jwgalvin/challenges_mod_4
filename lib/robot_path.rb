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
# Return "is a circle" or "is not circular"
class love_death_robots

  def initialize
    @direction = { 'N' => 0, 'E' => 1, 'S' => 2, 'W' => 3}
    @init_X = 0
    @init_Y = 0
  end

  def return_to_origin(orders)
    commands = orders.chars.capitalize()
    temp_x = @init_X
    temp_y = @init_Y
    direction = @direction[0].keys
      commands.each do |order|
        if order == "G" && direction == "N"
          temp_y += 1
        elsif order == "G" && direction == "E"

  end

end
