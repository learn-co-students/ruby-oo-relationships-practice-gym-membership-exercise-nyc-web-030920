# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("elliott", 150)
l2 = Lifter.new("andre", 770)
l3 = Lifter.new("Capn America", 140)
l4 = Lifter.new("Jamie", 230)

g1 = Gym.new("Grindhouse")
g2 = Gym.new("Planet Fitness")

m1 = Membership.new(l1, g1, 330)
m2 = Membership.new(l2, g1, 330)

m3 = l1.sign_up(g2, 420)
m4 = Membership.new(l3, g2, 420)

binding.pry

puts "Gains!"
