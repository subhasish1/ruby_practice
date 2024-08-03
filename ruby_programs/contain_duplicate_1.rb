
# 219. Contains Duplicate II

# Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.


# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    hash = {}
    result = false
    nums.each_with_index do |e, index|
      if hash[e] && index - hash[e] <= k
       
          result = true 
      end
      
      hash[e] = index
      
    end
    result
    
    
end

nums = [1,0,1,1]
k = 1
p contains_nearby_duplicate(nums, k)