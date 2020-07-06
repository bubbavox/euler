# solved
# 004- Largest palindrome product
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palprod
  pal_ary = Array(Int32).new
  999.downto(100) do |f1|
    999.downto(100) do |f2|
      prod = f1 * f2
      if prod == prod.to_s.reverse.to_i
        pal_ary << prod
      end
    end
  end
  pal_ary.max
end

puts palprod

# elapsed = Time.measure { 32.times { palprod } }
# puts "32X ran in #{elapsed.total_seconds} seconds."