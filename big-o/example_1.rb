# This will take O(N) time. Iterating through the array twice doesn't matter.
#
# Usage: ruby example_1 ...
#
# Where ... is you can enter as many integers as you'd like separated by
# a space. Check out the examples below.
#
# Example: ruby example_1 1 2
# Example: ruby example_1 2 4 6 8 10
#
def sum_and_product(arr)
  sum = 0
  product = 1

  arr.size.times do |i|
    sum += arr[i]
  end

  arr.size.times do |i|
    product *= arr[i]
  end

  puts "#{sum}, #{product}"
end

nums = []

ARGV.each { |num| nums << num.to_i }

if nums.size == 0
  raise "You didn't provide any numbers!"
end

sum_and_product(nums)
