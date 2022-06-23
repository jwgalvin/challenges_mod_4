# Write a function that removes every lone 9 that is inbetween 7s.
#
# "79712312" --> "7712312"
# "79797"    --> "777"
# if a string has a 9 between 7's remove it
# convert to an array and use conditionals to see if any 9's are to be eaten
require 'pry'

class HungrySevens

  def seven_ate9(str)
    buffet = str.to_i.digits.reverse
    #binding.pry
    case
    when buffet.count < str.length
      buffet.unshift(0)
    end
    buffet.each_with_index do |num, index|
      case
      when num == 9
        if buffet[index -1] == 7 && buffet[index +1] == 7
          buffet.delete_at(index)
        end
      end
    end
    buffet.join("")
  end
end
