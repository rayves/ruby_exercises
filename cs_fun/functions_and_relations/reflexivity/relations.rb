=begin
    
Implement the function:

isReflexive?(setOfPairs)

Given a set of pairs (an array of arrays), return true if the set represents a reflexive relation.

Examples:

isReflexive?([[1,1],[2,2]])    # should return true

isReflexive?([[1,1],[2,2],[1,3]])    # should return true (for every x, there is an [x,x])

isReflexive?([[1,1],[2,1]])    # should return false

isReflexive?([])    # should return true
    
=end

def isReflexive?(pairs)
    # your code here
    if pairs.length < 2
        return true
    end
    pairs_check = []
    pairs.each do |pair|
        if (pair[0] - pair[1]) == 0
        pairs_check << pair
        end
    end
    if pairs_check.length > 1
        return true
    else
        return false
    end
end

pp isReflexive?([[1,1],[2,2]])

pp isReflexive?([[1,1],[2,2],[1,3]])

pp isReflexive?([[1,1],[2,1]])

pp isReflexive?([])

pp isReflexive?([2,1,3])