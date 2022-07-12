# What are Roman Numerals?
#
# Your goal is to write a method/function that converts an integer into a string such that the number is represented in Roman Numerals in the most efficient way.
#
# For example, the number 4 could be written as IIII but it’s more efficient to use IV since that’s a shorter string.
#
# Assume no number is greater than 4,000.
#
# Here are the Roman Numeral equivalents you’ll need to know:
#
# M=1000
# CM=900
# D=500
# CD=400
# C=100
# XC=90
# L=50
# XL=40
# X=10
# IX=9
# V=5
# IV=4
# I=1


#create a method that takes and int and converts to roman numeral.
#use a Hash for key/vale roman/int pairs
#use a new_sum in the method to subtract letter value pairs as the accumulator takes a letter.
#use a length to figure out Which letter value to subtract?
require 'pry'
class RomanNumeralConverter
  attr_reader :roman_numerals
  def initialize
    @roman_numerals = {"M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1}
  end


  def to_roman(int)
    temp_value = int
    @roman_numeral = []
    counter = 0
    while temp_value > 0
      if temp_value - @roman_numerals.values[counter] >= 0
        @roman_numeral << @roman_numerals.keys[counter]
        temp_value = (temp_value - @roman_numerals.values[counter])
      else
        counter += 1
      end
    end
    return @roman_numeral.join
  end

end
