# A palindrome is any number, word, or phrase that reads the same forward as it does backward. In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.
#
# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number plus its inverse equals a palindrome that is greater than 1,000.
#
# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.
#
# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.
#
# Bonus: Once you’ve found a working solution, see if you can create a solution without converting the numbers to strings/arrays.

#start at 0, increment 1, add it to its reverse, and check if greater than 1000 && a palindrome
require 'pry'
#int.to_s.split('') == int.to_s.reverse.split('')
class PalindromeSum

  def math_palindrome
    int = 0
    sum = 0
    array = []
    temp_sum = 0
    until array.count ==  25
      sum = int + int.to_s.reverse.to_i
      if sum.to_s.split('') == sum.to_s.reverse.split('') && sum > 1000
        array << int
        int +=1
      else
        int += 1
      end
    end
    return array
  end
end
