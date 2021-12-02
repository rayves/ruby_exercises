class Vehicle
    attr_accessor :color
    attr_reader :make
    def initialize (color, make, model)
        @engine = true
        @color = color
        @make = make
        @model = model
    end

end