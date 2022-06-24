# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.
#
# #Examples:
#
# Kata.getMiddle("test") should return "es"
#
# Kata.getMiddle("testing") should return "t"
#
# Kata.getMiddle("middle") should return "dd"
#
# Kata.getMiddle("A") should return "A"
# #Input
#
# A word (string) of length 0 < str < 1000 (In javascript you may get slightly more than 1000 in some test cases due to an error in the test cases). You do not need to test for this. This is only here to tell you that you do not need to worry about your solution timing out.
#
# #Output
#
# The middle character(s) of the word represented as a string.

# take in a string and convert to an array. Find the middle character. If there is an even number find the middle to. return the middle characters.
require 'pry'
class Malcolm

  def get_middle(s)
    malcolm = s.split(//)
    middle = []
    case
    when s.length.even?
      middle << malcolm[malcolm.length/2-1]
      middle << malcolm[malcolm.length/2]
      return middle = middle.join
    else
      middle << malcolm[malcolm.length/2.round]
      return middle[0]
    end
  end
end
