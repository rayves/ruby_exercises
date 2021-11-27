# mums_special_packed_lunch_for_sweetie = ["love-sammiches", "noodles", "fruit-rollups", "shrimp", "an entire coconut","3 feathers from 3 different birds"]

# index = 0
# while index < mums_special_packed_lunch_for_sweetie.count
#     puts "I eat: " + mums_special_packed_lunch_for_sweetie[index]
# index += 1
# end

# has_user_pressed_quit_button = false
# while has_user_pressed_quit_button == false
#     puts "Swing your booty on the dance floor"
#     should_exit = gets.chomp
#     if should_exit == "exit"
#         has_user_pressed_quit_button = true
#     end
# end

# movie_genres= ["romcom", "comedy", "action", "thriller", "sci-fi", "horror", "mystery"]

# for movie_genre in movie_genres
#     puts "Movie genre: #{movie_genre}"
# end

city_names = ["Dawin", "Sydney", "Manilla", "New Mombasa", "London"]
city_avg_temperatures = [35.0, -10.0, -30.0, 35.0, 22.0]

# Simulate global warming
co2_levels = 1
city_index = 0
while city_index < city_names.count
    city_avg_temperatures[city_index] += co2_levels
    city_index += 1 
end

city_index = 0
while city_index < city_names.count
    puts "#{city_names[city_index]} temperature: #{city_avg_temperatures[city_index].to_s}"
    city_index += 1 
end

