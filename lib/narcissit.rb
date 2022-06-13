# A Narcissistic Number is a positive number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).
#
# For example, take 153 (3 digits), which is narcisstic:
#
#     1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
# and 1652 (4 digits), which isn't:
#
#     1^4 + 6^4 + 5^4 + 2^4 = 1 + 1296 + 625 + 16 = 1938
# The Challenge:
#
# Your code must return true or false (not 'true' and 'false') depending upon whether the given number is a Narcissistic number in base 10. This may be True and False in your language, e.g. PHP.
#
# Error checking for text strings or other invalid inputs is not required, only valid positive non-zero integers will be passed into the function.


#use the above definition to examine if a number is the sum of its own digits
#turn a number into an array and then math out each digit raised to the number of elements in the array.
# the calculate the sum and compare to the original number
require 'pry'

class Narcissistic

  def is_narcissistic?(int)
    array = int.digits
    array_multiplied = []
    array.each do |num|
      array_multiplied << num ** array.count
    end

    if array_multiplied.sum == int
      return true
    else
      return false
    end
  end
end
