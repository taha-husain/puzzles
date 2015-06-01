# Write a program (in Python, JavaScript or Ruby) to populate
# and then sort a randomly distributed list of 1 million integers,
# each integer having a value >= 1 and <= 100.
# Your program should carefully consider the input
# and come up with the most efficient sorting solution you can think of.
# Provide the space and time complexity of your algorithm

require 'benchmark'

arr = []
1000000.times do
  arr.push((rand*101).to_i)
end

# A pass through the MRI source code reveals that the the Array.sort! is implemented via quicksort. 
# And while the benchmarks do show a four times performance hit when compared to the raw C++ version 
# sorting an array of integers, you have to remember that an equivalent implementation in Ruby 
# is operating on array of integer objects! 
# In other words, native Array.sort! is a highly optimized piece of code: use it, embrace it, and don't worry about it!
# via - https://www.igvita.com/2009/03/26/ruby-algorithms-sorting-trie-heaps/

arr.sort!

# Thus, time complexity is O(nlog n) on average and O(1) in best case.
# Whereas, space complexity remains O(1) in best case and limits to O(log n) in average and worst case.

# Benchmark.bm do |x|
#  x.report do
#    arr.sort!
#  end
# end
# 0.080000   0.000000   0.080000 (  0.079269)
