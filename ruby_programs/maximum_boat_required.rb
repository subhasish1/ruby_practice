# Input: people = [3,2,2,1], limit = 3
# Output: 3
# Explanation: 3 boats (1, 2), (2) and (3)



# @param {Integer[]} people
# @param {Integer} limit
# @return {Integer}
def num_rescue_boats(people, limit)
  
    people.sort!
  
    left = 0
    right = people.size - 1
    boats = 0
    while left <= right
      
      if people[left] + people[right] <= limit
        left += 1
      end
      
      right -= 1
      boats += 1
      
    end
    
    return boats
end
people = [5,1,4,2]
limit = 6
p num_rescue_boats(people, limit)