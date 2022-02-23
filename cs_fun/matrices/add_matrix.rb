=begin
    
Matrix addition
Implement a function that adds two matrices

It should return nil if the two matrices cannot be added (because of their dimensions)

Example:

matrixA = [1,1,1]
matrixB = [1,1,1]

add(matrixA,matrixB)  # should return [2,2,2]

Example:

matrixA = [[1],[1],[1]]
matrixB = [[1],[1],[1]]

add_matrix(matrixA,matrixB)  # should return [[2],[2],[2]]

Example: 

matrixA = [1,1,1]
matrixB = [1,1]

add_matrix(matrixA,matrixB)  # should return nil
    
=end

def add_matrix(m1,m2)
	# your code here
	m3 = [m1,m2]
	if m1.length != m2.length
		return nil
	else
		return m3.transpose.map {|x| x.reduce(:+)}
	end
end

pp add_matrix([1,1,1],[1,1,1])
pp add_matrix([[1],[1],[1]],[[1],[1],[1]])
pp add_matrix([1,1,1],[1,1])

# matrixa = [1,1,1]
# matrixb = [2,2,2]
# matrixc = [[1,1,1],[2,2,2]]
# matrixd = matrixc.transpose
# matrixe = matrixd.map do |e|
# 	[e.sum]
# end




# pp matrixe