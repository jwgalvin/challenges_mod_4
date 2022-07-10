# Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

# Examples
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"

class Reverser
    def reverse_words(str)
        arr = str.scan(/\s+|\S+/)
        reversed = []
        arr.each do |word|
            reversed << word.reverse
        end
        reversed.join
    end
end