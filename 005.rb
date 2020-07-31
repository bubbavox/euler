
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# improved:
  # test div_ary (up to max / 2)
    # max = 20
    # min = 1
    # div = min
    # div_ary.each
      # if n !/ min, then skip 4, 6, 8...               (remove numbers from div_ary & increment
      # div += 1        
      # if n !/ 3, then skip 6, 9, 12, 15, 18...
      # div += 1
      # if n !/ 5, then skip 10, 15, 20
      # div += 1
      # if n !/ 7, then skip 14..
      # skip 8, 9, break at 10.

# basic: 
  # 

# frozen_string_literal: true

def lcm (min,max) 1
  puts given_ary = (min..max).to_a
  given_ary.each do |divisor|
    elim_ary = given_ary.filter {|g|  }
  end
end

min =  1
max = 20

lcm(min,max)


