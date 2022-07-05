# Summation
# Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.

# For example:

# summation(2) -> 3
# 1 + 2

# summation(8) -> 36
# 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

class Summation

    def summation(num)
        # sum = 0
        # range = (0..num).to_a
        # range.each do |int|
        #     sum = sum + int
        # end
        # sum
        (1..num).reduce(:+)
    end
end