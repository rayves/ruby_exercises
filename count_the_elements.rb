# Count the Elements
# Create a method that takes an array as an argument, and returns an array of hashes, with the amount of each item in the array (Very wordy, but just check out the examples!)

# N.B. This method should be case sensitive!

# E.g. count_of_elements(["leopard","wolf","bear","bear","leopard","bear"]), should return [{"leopard" => 2}, {"wolf" => 1}, {"bear" => 3}]

# E.g. count_of_elements(["leopard"]), should return [{"leopard" => 1}]

# E.g. count_of_elements(["leopard", "Leopard"]), should return [{"leopard" => 1}, {"Leopard" => 1}]

# E.g. count_of_elements([]), should return []

def count_the_elements(elements)
    #INOUT ARRAY
    #Loop through the array
    # Count the element or add to a hash
    
    # count = {}
    # elements.each do |element|
    #     if count[element]
    #         count[element] = count[element] + 1
    #     else
    #         count[element] = 1
    #     end
    # end
    # new_array = []

    # count.each do |animal, num|
    #     new_array.push({animal => num})
    # end

    # return new_array

    count = {}
    elements.each do |element|
        if count[element]
            count[element] += 1
        else
            count[element] = 1
        end
        return count
    end
    

    pp count_the_elements(["leopard","wolf","bear","bear","leopard","bear"])


    new_array = []

    count.each do |animal, num|
        new_array.push({animal => num})
    end

    return new_array