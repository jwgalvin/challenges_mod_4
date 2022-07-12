# Instructions
# If you’ve never heard of Pascal’s Triangle, you are not alone! Use this resource to help gain some context.
#
# Your goal is to write a method/function that, given a depth (n), returns an array representing Pascal’s Triangle to the n-th level.
#
#    #Ruby
#    calculate_pascals_triangle(4)
#    =>  [1, 1, 1, 1, 2, 1, 1, 3, 3, 1]
require 'pry'
class PascalTri

  def pascalsTriangle(n)
    pascal = [1]
    row = [1]
    case
    when n > 1
      (1...n).map do |int|
        if int.zero?
          pascal << row
        else
          row = ([0] + row).zip(row + [0]).collect { |a, b| a + b }
          pascal << row
        end
      end
      pascal.flatten
    else
      row
    end
  end

end
