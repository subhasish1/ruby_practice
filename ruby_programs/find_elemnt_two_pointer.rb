nums = [1, 2, 4, 6, 8, 9, 14, 15]

def find_sums(nums, target)
  left = 0
  right = nums.length - 1
  
  while left < right
    sum = nums[left] + nums[right]
    
    if sum == target
      return nums[left], nums[right]
    elsif sum > target
      right -= 1
    else
      left += 1
    end
        
  end
  
end

p find_sums(nums, 13)