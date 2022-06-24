# DESCRIPTION:
# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
#
# Examples:
#
# * 'abc' =>  ['ab', 'c_']
# * 'abcdef' => ['ab', 'cd', 'ef']
require 'pry'

class Splitter

  def solution(string)
    array = string.split(//)
    counter = array.count
    output = []
    until array == []
      if array.count == 1
        array << "_"
      end
      output << (array[0] + array[1])
      array = array.drop(2)
    end

    return output
  end

end
