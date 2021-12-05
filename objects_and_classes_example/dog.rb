require_relative('./pets')

class Dog < Pet
    attr_reader :breed
    def initialize(name, breed)
        super("dog", name) #hardcode "dog" type as every new instance of Dog will be "dog" type.
        #passed name arugment
        @breed = breed
        @walks = []
    end
    def walk(distance_in_kms)
        @walks << distance_in_kms
    end
    #override display daily log
    def display_daily_log
        super #pass through all code from original (parent) method
        puts "#{@name} has taken the following walks today:"
        @walks.each do |walk|
            puts " #{walk} kms"
        end
    end
end

roy = Dog.new("Roy", "Labrador")
puts roy
puts "#{roy.name} has type #{roy.type}"
roy.eat(10, "morning")
roy.display_daily_log
puts "Roy's breed is #{roy.breed}"
roy.walk(2)
roy.display_daily_log

poto = Pet.new("cat", "Poto")
poto.eat(10, "morning")
poto.display_daily_log