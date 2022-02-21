=begin

Implement the common set operations: intersection, union, symmetric difference

The **union** function takes 2 arrays as input, and returns the union of those two arrays.

Example:

union([1,2,3], [3,4,5])   # should return [1,2,3,4,5]

union(["a", "b", "c"], ["d", "e", "f"]) # should return ["a", "b", "c", "d", "e", "f"]

The **intersection** function takes 2 arrays as input and returns the intersection.

Example:

intersection([1,2,3],[3,4,5])  # should return [3]

The **symmetric_difference** function takes 2 arrays as input as returns the symmetric difference (all elements in one or the other set, but not both).

Example:

symmetric_difference([1,2,3],[3,4,5]) # should return [1,2,4,5]

Implement these yourself - not using the Set class.

=end

def intersection(set1, set2)
	# set1 and set2 are arrays
	# return the intersection
	combined_set = set1 + set2
	count = Hash.new(0)
	combined_set.each do |num|
		count[num] += 1
	end
	count.each do |key, value|
		if value < 2
			count.delete(key)
		end
	end
	# alternate syntax
	# count.delete_if{|k,v| v < 2}
	return count.keys
end

def union(set1, set2) 
	# set1 and set2 are arrays
	# return the union
	combined_set = set1 + set2
	count = Hash.new(0)
	combined_set.each do |num|
		count[num] += 1
	end
	return count.keys
end

def symmetric_difference(set1, set2)
	# set1 and set2 are arrays
	# return the symmetric difference
	combined_set = set1 + set2
	count = Hash.new(0)
	combined_set.each do |num|
		count[num] += 1
	end
	count.each do |key, value|
		if value > 1
			count.delete(key)
		end
	end
	# alternate syntax
	# count.delete_if{|k,v| v < 2}
	return count.keys
end

pp intersection([1,2,3],[3,4,5])
pp symmetric_difference([1,2,3],[3,4,5])
pp union([1,2,3], [3,4,5])
pp union(["a", "b", "c"], ["d", "e", "f"])