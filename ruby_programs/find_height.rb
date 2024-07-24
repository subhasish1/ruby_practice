# The problem you're facing is to find the maximum amount of water that can be trapped between two vertical lines represented by an array of heights. Here's a detailed explanation of how to approach this problem and derive the solution:

# Problem Breakdown:
# Given an array height where each element represents the height of a vertical line at a specific index i:

# The width between two lines is determined by their indices.
# The water that can be trapped between these lines is determined by the shorter of the two lines (to prevent overflow) multiplied by the distance between them.
# Approach:
# To solve this problem efficiently, you can use the Two-pointer technique:

# Initialize Pointers: Use two pointers, left starting from the beginning (0) and right starting from the end (n-1) of the array.

# Calculate Area: Compute the area formed between the lines at left and right using the formula:


# area=min(height[left],height[right])×(right−left)
# This gives you the area of the water container formed by these two lines.

# Update Maximum Area: Track the maximum area encountered so far.

# Move Pointers: Move the pointer that points to the shorter line inward, as this might potentially increase the area (since moving the pointer inward might increase the height of the remaining line).

# Repeat: Continue the process until the left pointer is no longer less than the right pointer.


def max_area(height)
    left = 0
    right = height.length - 1
    
    max_area = 0
    
    
    while left < right
      current_area = [height[left], height[right]].min * (right - left)
      
      max_area = [max_area, current_area].max
      
      if height[left] > height[right]
        right -= 1
      else
        left += 1
      end
    end
    
    max_area
  end
  
  height = [1,8,6,2,5,4,8,3,7]
  
  p max_area(height)