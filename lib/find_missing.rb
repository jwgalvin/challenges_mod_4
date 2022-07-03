# An Arithmetic Progression is defined as one in which there is a constant difference between the consecutive terms of a given series of numbers. You are provided with consecutive elements of an Arithmetic Progression. There is however one hitch: exactly one term from the original series is missing from the set of numbers which have been given to you. The rest of the given series is the same as the original AP. Find the missing term.

# You have to write a function that receives a list, list size will always be at least 3 numbers. The missing term will never be the first or last one.

# Example
# findMissing([1, 3, 5, 9, 11]) == 7
# PS: This is a sample question of the facebook engineer challenge on interviewstreet. I found it quite fun to solve on paper using math, derive the algo that way. Have fun!

class FindMissing
    def find_missing(arr)
        dif = 0
        new_array = []
        arr.each_with_index do |int, index1|
            #binding.pry
            if index1 == 0
                dif = arr[index1 + 1] - int
                new_array << dif
            elsif index1 <= (arr.count-2) 
                new_array  << ((arr[index1+1]) - int)
            end
        end
        new_array.each_with_index do |diff, index2|
            #binding.pry
            if dif > diff
                #binding.pry
                return (arr[index2-1] + diff)
            end
            if diff > dif
                #binding.pry
                return (arr[index2] + dif)
            end
        end
    end 
end
