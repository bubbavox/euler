# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# 99*99 = 75*130 = 50*196
# 99*75 = 75*99  = 50*148
# 99*50 = 75*66  = 50*99
# 99*25 = 75*33  = 50*49

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
  puts pal_ary.max
end

palprod