=begin

Binary search
Implement a function that will perform a binary search, and return the number of steps it takes to complete the search.

When the array has an even number of values the midpoint index will be rounded up.

Example: 

binary_search([1,5,8,12,20,21,35], 8) # should return [2, 3] 

In this case the index returned would be 2 and it should take 3 steps. 

In the first step, 3 is the midpoint index (value = 12).  In the second step 1 is the midpoint index (value = 5).  In the third and final step we are only left with 8 at index 2.

=end

def binary_search(arr, value)
	#your code here
	count = 0
	left = 0
	right = arr.length - 1
	midpoint = arr.length / 2
	done = false
	until done == true
		if arr.empty?
			midpoint = -1
			done = true
		elsif left == right && arr[midpoint] != value
			count += 1
			midpoint = -1
			done = true
		elsif arr[midpoint] == value
			count += 1
			done = true
		elsif value < arr[midpoint]
			right = midpoint - 1
			midpoint = (left + right) / 2
			count += 1
		elsif value > arr[midpoint]
			left = midpoint + 1
			midpoint = (left + right) / 2
			count += 1
		else
			done == true
		end
	end
	return [midpoint,count]
end

pp binary_search([1,5,8,12,20,21,35], 8)
pp binary_search([1, 3, 7, 10, 14, 19, 31], 10)
pp binary_search([1], 1)
pp binary_search([1, 3, 7, 10, 14, 19, 31], 1)
pp binary_search([1, 3, 7, 10, 14, 19, 31], 31)
pp binary_search([],3)
pp binary_search([1, 3, 7, 10, 14, 19, 31], 6)