=begin
    
Implement the function:

isSymmetric?(setOfPairs)

Given a set of pairs (an array of arrays), return true if the set represents a symmetric relation.

Examples:

isSymmetric?([[1,2],[2,1]])  # should return true

isSymmetric?([[1,1],[1,2],[2,1]]) # should return true

isSymmetric?([])  # should return true

isSymmetric?([[1,2],[2,1],[1,3]])  # should return false (missing [3,1])
    
=end

def isSymmetric?(pairs)
    # your code here
    if pairs.length < 2
        return true
    end
    pairs_reflex = []
    pairs_sym = []
    pairs.each do |pair|
        if (pair[0] - pair[1]) != 0
            pairs.each do |pair2|
                if pair == pair2.reverse
                    pairs_sym << pair
                end
            end
        elsif (pair[0] - pair[1]) == 0
            pairs_reflex << pair
        end
    end
    if (pairs_reflex.length + pairs_sym.length) != pairs.length
        return false
    elsif pairs_sym.length > 1
        return true
    else
        return false
    end
end

pp isSymmetric?([[1,2],[2,1]])

pp isSymmetric?([[1,1],[1,2],[2,1]])

pp isSymmetric?([])

pp isSymmetric?([[1,2],[2,1],[1,3]])