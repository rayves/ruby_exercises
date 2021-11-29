=begin

You are the dodgy head of a construction company. You jam the largest number of apartments per floor that regulations will allow. To help you find the highest number of apartments you can fit your are going to design some methods.

You will write one method that calculates the area of floorspace from two arguments, the length and width. This method should be called calculate_floorspace.

You will write a second method that takes a floorspace, and calculates the number of apartments you can fit within this given area (you can fit one apartment in every 28 square meters, and this should be rounded down - you can’t have a partial apartment). This method should be called calculate_apartments

Write a third method that takes a number of floors, a length, and a width as arguments, and that returns a hash of the total number of apartments you can jam into the building, and the total money made (assuming each apartment is worth $120,000) using the previous two methods. This method should be called calculate_buildings 

Expected Output:

calculate_bulidings(length, width, levels) => { total_apartments: 10, total_money_made: 1_200_000 }

end

# You will need to define the methods yourself.