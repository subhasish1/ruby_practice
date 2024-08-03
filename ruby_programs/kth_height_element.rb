# Given an integer array nums and an integer k, return the kth largest element in the array.

# Note that it is the kth largest element in the sorted order, not the kth distinct element.

# Can you solve it without sorting?

 

# Example 1:

# Input: nums = [3,2,1,5,6,4], k = 2
# Output: 5

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
    (k-1).times do
      max = nums.max
      nums.delete_at(nums.index(max))
    end
    
    nums.max
end

nums = [3,2,3,1,2,4,5,5,6]
k = 4

# p nums.delete_at(nums.index(5))
# p nums
p find_kth_largest(nums, k)