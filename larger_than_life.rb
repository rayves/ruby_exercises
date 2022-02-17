=begin
    
Create a method that takes an array as it's argument and returns every number that is larger than every number that follows it.

E.g. larger_than_life([3, 13, 11, 2, 1, 9, 5]), should return [13, 11, 9, 5]

      (As 13 is larger than 11, 2, 1, 9 and 5, whilst 2 is bigger than 1, but is not bigger than 9)

E.g. larger_than_life([-30, 13, -11, 2, 1, 9, 12]), should return [13, 12]

E.g. larger_than_life([1, 2, 3, 4, 5]), should return [5]
    
=end


#* Method 1
def larger_than_life(nums)
	#Your code here
	new_array = []
	# copy arguement array into checking array
	check_array = nums
	# for each element in nums execute code
	nums.each do |num|
		# value currently being assessed
		check = num
		# for each element in check_array execute code
		check_array.each_with_index do |num_two, index|
			# if value currently being assessed is equal to element in array and there is still a next element then skip this element
			if check == num_two && check_array[index + 1]
				next
			# if value currently being assessed is less than element then drop currently assessed value from checking array, break this loop and re-execute this loop with next value to be assessed
			elsif check < num_two
				check_array = check_array.drop(1)
				break
			# if value being assessed is already included as a select value then skip this element
			elsif new_array.include? check
				next
			# if there is still a next element then skip this element
			elsif check_array[index + 1]
				next
			# if all other conditions are false, this value being assessed is correct, add to new array and remove from checking array.
			else
				new_array << check
				check_array = check_array.drop(1)
			end
		end
	end
	return new_array
end

# #*Method 2
# def larger_than_life(nums)

#     new_arr = []  #=>set an new empty array

#     if nums.uniq.length == 1  #=> this means all elements are equal in nums array
#         new_arr << nums[0]   #=> new_arr only need any of elements from nums array
#     else
#         for i in 0..nums.length-1 do  #=> loop i times
#             while nums[i] == nums.max  #=> only loop when there is still nums[i] is maxmimum in nums array
#                  new_arr << nums.slice!(i)  #=> append that maxmimum element into new_arr and take it off permanently from nums array
#             end

#     end
#     return new_arr
#     end
# end

# #* Method 3

# def larger_than_life(nums)
#     if nums.empty?
#         return []
#     end

#     res = []
#     for i in 0..nums.length-1 do
#         bigger = true
#         for j in i+1..nums.length-1 do
#             if nums[j] >= nums[i]
#                 bigger = false
#                 break
#             end
#         end
#         res.push(nums[i]) if bigger 
#     end
#     return res;
# end

pp larger_than_life([3, 13, 11, 2, 1, 9, 5])

pp larger_than_life([-30, 13, -11, 2, 1, 9, 12])

pp larger_than_life([1, 2, 3, 4, 5])