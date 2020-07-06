# frozen_string_literal: true

# solved
# 002- Even Fibonacci numbers
# Each new term in the Fibonacci sequence is generated by adding the  previous two terms. By starting with 1 and 2, the first 10 terms will  be:
  # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do  not exceed four million, find the sum of the even-valued terms.

# PSEUDO:
# prev = 1
# fib = 2

# prev (1) + fib (2) = newfib (3)
# fib = newfib
# prev = fib

# prev (2) + fib (3) = newfib (5)
# prev (3) + fib (5) = newfib (8)

prev = 1
fib = 1
sum = 0
while fib <= 4_000_000 do   # loop 
  newfib = prev + fib
  prev = fib
  fib = newfib
  if fib.even? then sum += fib end
end

puts sum