require 'benchmark'

# My Solution
def prime?(num)
    num == 0 || num == 1 || num < 0 ? false : (2..num-1).none? { |x| num % x ==0 }
end

puts Benchmark.measure {prime?(105557123)}
puts prime?(105557123)


# Learn-co Solution
def prime_learnco?(num)
    if num < 0 or num == 0 or num == 1
      return false
    else
      (2..num-1).to_a.all? do |possible_factor|
        num % possible_factor != 0
      end
    end
end
  
puts Benchmark.measure {prime_learnco?(105557123)}
puts prime_learnco?(105557123)

