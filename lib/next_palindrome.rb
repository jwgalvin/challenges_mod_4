# A palindrome is any number, word, or phrase that reads the same forward as it does backward. In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.
#
# Your goal is to write a method/function that takes in an integer and returns the next palindrome. It is safe to assume you are working with only whole numbers, no decimals, and no negatives.
#
# Example
#
#     #Ruby
#     find_next_palindrome(100)
#     => 101


#exit scenario int.split == int.digits then palindorme is true
require 'pry'
class NextPalidrome

  def finds_palindromes(int)
    until int.to_s.split('') == int.to_s.reverse.split('') do
      int += 1
    end
    puts int
    return int
  end

end
