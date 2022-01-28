class Dog
    attr_accessor :name, :breed
    def initialize(name, breed)
        @name = name
        @breed = breed
    end
    def to_s
        return "name: #{@name} breed: #{@breed}"
    end
end

rex = Dog.new("Rex", "Husky")
frank = Dog.new("Frank", "Lab")
alex = Dog.new("Alex", "Golden")


puts rex
puts frank
puts alex

File.open("./CustID#{rand(1..600)}.txt", "w+") {|f| f.write(alex)}