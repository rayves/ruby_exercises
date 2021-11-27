people = [
    {name: "Caitlyn", location: "Redan"},
    {name: "Daisy", location: "Brunswick"},
    {name: "Geoff", location: "Waterloo"},
    {name: "Joshua", location: "Nerallan"},
    {name: "Ashley", location: "Berwick"},
    {name: "Raymond", location: "Werribee"},
]

def get_location(input_name, people_array)
    #INPUTS
        # name : string, people_array : array of hashes
            # Go through list one by one (loop)
        # check the name
            #if person's name == input name THEN save/print/return location AND BREAK
            #ELSE keep going through the loop
    #OUTPUT
        # location : string
    for person in people_array
        if person[:name] == input_name
            location = person[:location]
            break
        end
    end
    return location
end

puts get_location("Ashley", people)