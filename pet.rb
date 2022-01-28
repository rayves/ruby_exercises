=begin

1. Examine the code and add comments that explain what each part does.

2. Add a sleep method to the Cat class that takes one parameter: time_in_hours . The method should update an array instance in the Cat class called naps. Give read access to naps.

3. Add a  sleep_time method to Cat that returns the total nap hours for the instance.

4. Mark your challenge to make sure it passes.

=end

class Pet
    attr_reader :type
    #allows the ability to read type instance variable
    attr_accessor :name
    #allows ability to read and write name instance variable
    @@total_pets = 0
    #class variable ment to keep total count of pets
    #will update +1 with every initialization of new object Pet.
 
    def initialize(type, name)
        @type = type
        @name = name
        @meals = []
        @@total_pets += 1
    end
 
    def self.total_pets
        @@total_pets
    end
 
    def eat(grams, time_of_day)
    # time_of_day is one of morning, afternoon, evening
        @meals << {amount: grams, time: time_of_day}
    end
   
    def display_daily_log
        puts "#{@name} ate #{@meals.length} meals today:"
        @meals.each do |meal|
            puts "   #{meal[:amount]} grams in the #{meal[:time]}"
        end
    end
 
    def to_s
        return "Pet: type-#{@type} name-#{@name}"
    end
 end
 
 class Cat < Pet
    attr_reader :naps
     def initialize(name)
         super("cat", name)
         @naps = []

     end
     def sleep(time_in_hours)
        @naps << time_in_hours
     end
     def sleep_time
        @naps.length > 0 ? @naps.sum : 0
     end
 end



#* CODE TEST
rex = Pet.new("Dog", "Rex")

puts rex