require_relative 'vehicle.rb'

my_red_car = Vehicle.new("Red", "Tesla", "X")
my_green_car = Vehicle.new("Green", "Nissan", "Navara")

pp "My car is #{my_red_car.color}"

pp "My car is #{my_green_car.color}"
