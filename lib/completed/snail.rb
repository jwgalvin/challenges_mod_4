# Instructions
# Given an n x n array, write a method that returns the array elements arranged from outermost elements to the middle element, traveling clockwise.
#
# A good way to visualize this is to picture the spiral shell of a snail!
#
# Example
#
#     #Ruby
#     array_matrix = [
#         [1, 2, 3],
#         [4, 5, 6],
#         [7, 8, 9]
#     ];
#     snail(array_matrix)
#     => [1, 2, 3, 6, 9, 8, 7, 4, 5]

#take an array of arrays of integers and sort them into a new array organized like a snail shell. at this time this will not be variable beyond a 3 x 3 shell
require 'pry'

class SnailSort
  def initialize
    @straight_snail = []
  end

  def snail_sort(array)
    if array.to_a.empty?
      snail_secrets = @straight_snail.flatten
      @straight_snail = []
      return snail_secrets
    else
      @straight_snail << array.shift
    end
    snail_sort(array.transpose.reverse)
  end

end
