# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here



puts "Gains!"

duncan = Lifter.new("Duncan", 100)
bob = Lifter.new("Bob", 200)
stephanie = Lifter.new("Stephanie", 50)
josh = Lifter.new("Josh", 75)

equinox = Gym.new("Equinox")
planet_fitness = Gym.new("Planet Fitness")
gain_house = Gym.new("Gain House")
binding.pry