# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Oliver Queen", 300)
l2 = Lifter.new("Barry Allen", 150)
l3 = Lifter.new("Steve Rogers", 1000)
l4 = Lifter.new("Bruce Wayne", 500)

g1 = Gym.new("X-Sports Fitness")
g2 = Gym.new("Lifetime Fitness")
g3 = Gym.new("24 Hour Fitness")
g4 = Gym.new("LA Fitness")

m1 = Membership.new(l1, g2, 1000)
m2 = Membership.new(l2, g1, 400)
m3 = Membership.new(l3, g3, 500)
m4 = Membership.new(l4, g4, 1000)

binding.pry 
puts "Gains" 