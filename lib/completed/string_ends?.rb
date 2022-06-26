# Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).
#
# Examples:
#
# solution('abc', 'bc') // returns true
# solution('abc', 'd') // returns false


require 'pry'

class StringEnd

  def solution(string1, string2)
    string1.end_with?(string2)
  end

end
