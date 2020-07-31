# frozen_string_literal: true

#solved
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# def lpf (given, divisor=2)
#   if given == divisor
#     return divisor
#   elsif given % divisor == 0
#     given /= divisor
#     lpf(given)
#   else
#     lpf(given, divisor+1)
#   end
# end

# puts lpf 600851475143

# def lpf (a)
#   f = 2
#   while f <= a
#     if a % f == 0
#       a /= f
#     else
#       f += 1
#     end
#   end
#   return f
# end

def lpf (a)
  f = 3
  while (a % 2 == 0) && (a > 2)
    a /= 2
  end
  if a == 2
    return a
  end
  while f <= a
    if a % f == 0
      a /= f
    else
      f += 2
    end
  end
  return f
end

# lpf 10  # => 5

# one-liner:
a=600851475143; d=2; a%d==0 ? (f=d;a/=d) : d+=1 while d<=a; puts f  # => nil

starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
1000.times {a=600851475143; d=2; a%d==0 ? (f=d;a/=d) : d+=1 while d<=a; f}
ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = ((ending - starting)*1000).round(4)
puts elapsed

# puts lpf 600851475143
# puts lpf 13195
# puts lpf 10
# puts lpf 8
# puts lpf 4
# puts lpf 3
# puts lpf 2
# puts ""
# for n in 2..10000
#   puts lpf n
# end


# x = 600851475143

# starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# 1000.times {lpf x}
# ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# elapsed = ((ending - starting)*1000).round(4)

# puts "#{lpf x} (1000 times in #{elapsed} ms)"

# >> 6857
# >> 373.2327