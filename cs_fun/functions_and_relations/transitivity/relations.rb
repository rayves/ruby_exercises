=begin
    
Implement the function:

isTransitive?(setOfPairs)

Given a set of pairs (an array of arrays), return true if the set represents a transitive relation.

Examples:

isTransitive?([[1,2],[2,3],[1,3]])  # should return true

isTransitive?([[1,2],[2,3],[1,3],[1,4]])  # should return true

isTransitive?([])  # should return true

isTransitive?([[1,2],[2,3],[1,5],[1,4]])  # should return false
    
=end

def isTransitive?(pairs)
    # your code here
    if pairs.length < 2
        return true
    end
    pairs_check = []
    if pairs.length == 2
        pairs.each do |pair|
            pairs.each do |pair2|
                if pair == pair2
                    next
                elsif pair[0] == pair2[0]
                    pairs_check << pair2
                end
            end
        end
    else
        pairs.each do |pair|
            pairs.each do |pair2|
                if pair[1] == pair2[0]
                    pairs.each do |pair3|
                        if pair == pair3
                            next
                        elsif pair[0] == pair3[0] && pair2[1] == pair3[1]
                            pairs_check << pair3
                        end
                    end
                end
            end
        end
    end
    if pairs_check.length > 0
        return true
    else
        false
    end
end

pp isTransitive?([[1,2],[2,3],[1,3]])

pp isTransitive?([[1,2],[2,3],[1,3],[1,4]])

pp isTransitive?([[1,2],[1,3]])

pp isTransitive?([[1,2],[2,3]])

pp isTransitive?([])

pp isTransitive?([[1,2],[2,3],[1,5],[1,4]])

pp isTransitive?([[1,2],[2,3],[1,4]])