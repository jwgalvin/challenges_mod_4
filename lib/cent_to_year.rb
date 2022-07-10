# Introduction
# The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

# Task
# Given a year, return the century it is in.

# Examples
# 1705 --> 18
# 1900 --> 19
# 1601 --> 17
# 2000 --> 20

class CentYear
    def century(year)
        arr = year.digits.reverse
        years = []
        case 
        when year < 100
            return 1
        when year < 1000
            century = arr[0]
            years << arr[1]
            years << arr[2]
            years = years.join.to_i
        else
            century = [arr[0]] 
            century << arr[1]
            century = century.join.to_i
            years << arr[2]
            years << arr[3]
            years = years.join.to_i
        end
        if years >= 1
            century +=1
        end   
        return century 
    end
end