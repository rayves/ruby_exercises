#attributes:
    # type
    # name
    # meal
class Pet
    attr_reader :type
    attr_accessor :name
    @@total_pets = 0 # CLASS ATTRIBUTE/CLASS VARIABLE First create total pets class | total pets initializes at 0
    def initialize(type, name) # special method for defining class
                                # called when create object instance from class
                                # sets initial object attributes
                                # gets objcet ready for use
                                # arguments passed through are assigned to instance variables
                                # attributes are encapsilated (protected) and cannot be accessed directly
        @type = type #instance variable - used to store attributes of the object
        @name = name
        @meals = []
        @@total_pets += 1   # increment total pets with each instance initialization
                            # new instance created with each call of Pet class
    end
    # Gives access to @@total_pets class variable
    def self.total_pets 
            @@total_pets
    end
    # # Method to access ability to change class instance variables
    # def name= (name)
    #     @name = name
    # end 
    # # method to access class name - must be done for each attribute of ruby shortcut methods not used
    # def name
    #     @name
    # end
    # def type
    #     @type
    # end
    def eat(grams, time_of_day)
    # time_of_day is one of morning, afternoon, evening
        @meals << {amount: grams, time: time_of_day}
    end
    def display_daily_log #parameters not needed as all information needed in class instance
        puts "#{@name} ate #{@meals.length} meals today:"
        @meals.each do |meal| #@meals = array | meal = elements in array
            puts "  #{meal[:amount]} grams in the #{meal[:time]}"
        end
    end
    def to_s 
        # method available to all obejcts in ruby
        #method that overwrites existing (default) method in class
        #alternate implementation of what should be printed when puts is called
        return "Pet: type-#{@type} name-#{@name}" #prints object instances
    end
end
# dog = Pet.new("dog", "Spike") #create new instance of Pet class
# dog.eat(10, "morning")
# puts dog.name
# dog.name = "Roy"
# dog.eat(15, "afternoon")
# dog.eat(10, "evening")
# dog.display_daily_log

#* Create object directly from sub-class
    #new object inherets all parent variables and methods
    # Sub_object.new(sub-class arugment1, sub-class arguement2)