=begin
    
Fill in the definition of the Dog class. It should have the following:

1. Attributes @name, @breed, @age
    - All should be readable outside of the class
    - @name should be writable outside of the class

2. A method called walk that takes 1 parameter, distance_in_kms

3.  A method called walked_distance that returns the total distance walked 

4. A method called display_walks that prints out all walks taken as shown here:

doggo = Dog.new("Roy", "Labrador", 8)
doggo.walk(2)
doggo.walk(1)
doggo.display_walks
Output: 

Roy has had 2 walks and walked 3 kms today:
1. 2 km
2. 1 km
    
=end

class Dog
    attr_reader :breed, :age, :walks
    attr_accessor :name

    def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @walks = []
    end

#     def name
#         @name
#     end
#     def name=(name)
#         @name=name
#     end
    def walk(distance_in_kms)
        walks << distance_in_kms
    end
    def walked_distance
        walks.length > 0 ? walks.sum : 0
            
    end
    def display_walks
        puts "#{name} has had #{walks.length} walks and walked #{walked_distance} kms today:"
        walks.each_with_index do |walk, index|
            puts "#{index + 1}. #{walk} km"
        end
    end
    #* @ does not need to be included when calling instance variables
end


doggo = Dog.new("Roy", "Labrador", 8)
doggo.walk(2)
doggo.walk(1)
doggo.display_walks
