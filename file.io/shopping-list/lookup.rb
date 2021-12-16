require 'json'
# json is just a string of text that is formated in a way that looks like javascript objects

alex_string = File.read("alex.json")
alex = JSON.parse(alex_string).transform_keys(&:to_sym)
    # JSON.parse -> reads json and turns into hash with keys and value as strings
    # .transform_keys(&:to_sym) changed keys from string to symbol
# alex_hash = alex.keys(&:to_sym)


# alex = {name: "Alex", age: 33, location: "Melbourne"}

##*turns hash into string
# my_json_alex = JSON.generate(alex)

puts "Where are you moving to?"
input = gets.chomp
alex[:location] = input
pp alex

File.open("./alex-new.json", "w+") do |f|
    f.write(alex.to_json)
    # .to_json -> converts to json format
    # aka "serialising" -> turning something into string format
end