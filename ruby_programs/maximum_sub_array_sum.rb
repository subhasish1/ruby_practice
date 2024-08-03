
# 2461. Maximum Sum of Distinct Subarrays With Length K

# Input: nums = [1,5,4,2,9,9,9], k = 3
# Output: 15
# Explanation: The subarrays of nums with length 3 are:
# - [1,5,4] which meets the requirements and has a sum of 10.
# - [5,4,2] which meets the requirements and has a sum of 11.
# - [4,2,9] which meets the requirements and has a sum of 15.
# - [2,9,9] which does not meet the requirements because the element 9 is repeated.
# - [9,9,9] which does not meet the requirements because the element 9 is repeated.
# We return 15 because it is the maximum subarray sum of all the subarrays that meet the conditions


def maximum_subarray_sum(nums, k)
    return nums[0] if nums.size == 1
    return nums.sum if nums.size == k 
     max_sum = 0
       (nums.size).times do |x|
         sub_array = nums[x, k]
        
         next if sub_array.uniq.size != k
         max_sum = [max_sum, sub_array.sum].max
         
       end
       
       max_sum
   end