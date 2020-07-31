# frozen_string_literal: true

# solved
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

require 'benchmark'

def palprod
  pal_ary = Array.new
  for f1 in 999.downto(100) do
    for f2 in 999.downto(100) do
      prod = f1 * f2
      if prod == prod.to_s.reverse.to_i
        pal_ary << prod
      end
    end
  end
  pal_ary.max
end

puts palprod

# elapsed = Benchmark.measure { 32.times { palprod } }
# puts "32X ran in #{elapsed.total} seconds."

