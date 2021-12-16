class Hello
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    # def to_s
    #     return "name-#{@name}"
    # end
end

rix = Hello.new("kyle")

puts rix.name.object_id