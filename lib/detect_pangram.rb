# A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

class Pangram
    def pangram?(string)
        chars = ('a'..'z').to_a
        check = string.downcase.split("").uniq
        check.each do |char|
            if chars.include?(char)
                chars.delete(char)
            end
        end
        return true if chars == []
        return false if chars != []
    end  
end