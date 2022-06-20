# Instructions
# Create a method/function that will intake a set of brackets [ { ( as a string and determine if the brackets are well-formed (match). Brackets can be nested.
#
#     bracket('{}')
#     // => true
#
#     bracket('{()}')
#     // => true
#
#     bracket('({[]}{[]})')
#     // => true
#
#     bracket('{(')
#     // => false
#
#     bracket('{[)][]}')
#     // => false
#
#     bracket(']')
#     // => false

#Return false if String is not at least 2 chars. create a "solution_pairs" hash/key to compare for properly nest brackets. Create an array for the hashes to hold temporarily and to see if it is empty
require 'pry'

class PairedBrackets

  def matched_set?(string)
    pairs = {'[' => ']', '{' => '}', '(' =>')' }
    array = []
    return false if string.length < 2
    string.each_char do |char|
      if pairs.keys.include?(char)
        array << char
      elsif pairs.values.include?(char)
        return false unless pairs[array.pop].eql?(char)
      end
    end
    array.empty?
  end
end
