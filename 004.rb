
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# 99*99 = 75*130 = 50*196
# 99*75 = 75*99  = 50*148
# 99*50 = 75*66  = 50*99
# 99*25 = 75*33  = 50*49

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
  puts pal_ary.max
end

palprod

# num1 = 1001
# puts num1 == num1.to_s.reverse.to_i 

# 2 - decrement both factors by the same amount, increasing the delta between them:
# delta=1;  factor1 -=1;  factor2 -=1
  # 99*99, 99*98, 98*98, 98*97...99*97, 
# delta=2;  factor1 -=1;  factor2 -=2
  # 99*97, 98*96, 97*95...
# delta=3;  factor1 -=1;  factor2 -=3
  # 99*96, 98*95, 96*94...

# >> 906609