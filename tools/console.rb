# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

rb = Gym.new("Rubidium Gym")
sydney = Gym.new("New Sydney Strong Gym")
shanghai = Gym.new("Shanghai Amazing Gym")
nyc = Gym.new("NYC Sportsclubs")
swazi = Gym.new("Swaziland Football Club")

mike = Lifter.new("Mike", 200)
angela = Lifter.new("Angela", 220)
ally = Lifter.new("Ally", 150)

mike.new_gym(50, rb)
mike.new_gym(40, sydney)
mike.new_gym(30, shanghai)

ally.new_gym(20, swazi)
ally.new_gym(40, shanghai)



binding.pry

puts "Gains!"



