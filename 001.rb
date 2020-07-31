# frozen_string_literal: true

# solved
# 001- Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3  or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

multiples = Array.new
for n in 1..999 do
  if n%3==0 || n%5==0
    multiples << n
  end
end

puts multiples.sum

# 1-liner
# puts ((1...1000).to_a.select {|num| num%5==0 || num%3==0}).sum