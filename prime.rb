# Add  code here!
def prime?(num)

    if num == 0 || num == 1 || num < 0
    return false
    elsif num == 2
        return true
    else 
        range_end = num-1
        (2..range_end).none? { |i| (num % i).zero? }
    end 
end


puts prime?(3)

