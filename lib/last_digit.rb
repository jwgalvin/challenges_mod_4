require 'pry'
# For a given list [x1, x2, x3, ..., xn] compute the last (decimal) digit of x1 ^ (x2 ^ (x3 ^ (... ^ xn))).
#
# E. g.,
#
# last_digit({3, 4, 2}, 3) == 1
# because 3 ^ (4 ^ 2) = 3 ^ 16 = 43046721.
#
# Beware: powers grow incredibly fast. For example, 9 ^ (9 ^ 9) has more than 369 millions of digits. lastDigit has to deal with such numbers efficiently.
#
# Corner cases: we assume that 0 ^ 0 = 1 and that lastDigit of an empty list equals to 1.
#
# This kata generalizes Last digit of a large number; you may find useful to solve it beforehand.

# INCOMPLETE. Definitely lacking comprehension of what is going on. https://brilliant.org/wiki/finding-the-last-digit-of-a-power/
class LastDigit
  def the_thing(array)
    digit = array.last
    count = array.count
    #binding.pry
    digit_of_power(digit, count)
  end

  def digit_of_power(digit, n)
    digit = digit % 10
    case digit
    when 0, 1, 5, 6 then digit
    else
      digit_of_square = digit * digit

      if n.even?
        result = digit_of_power(digit_of_square, n / 2)
        binding.pry
      else
        result = digit * digit_of_power(digit_of_square, (n - 1) / 2) % 10
      end
    end
  end
end
