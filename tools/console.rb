# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("brett", 250)
lifter2 = Lifter.new("rob", 160)
lifter3 = Lifter.new("john", 170)
lifter4 = Lifter.new("ant", 220)
lifter5 = Lifter.new("tommy", 200)
lifter6 = Lifter.new("greg", 300)
lifter7 = Lifter.new("tony", 150)

gym1 = Gym.new("Gold's Gym")
gym2 = Gym.new("Planet Fitness")
gym3 = Gym.new("Equinox")

membership1 = Membership.new(50, gym1, lifter1)
membership2 = Membership.new(25, gym2, lifter2)
membership3 = Membership.new(100, gym3, lifter3)
membership4 = Membership.new(100, gym3, lifter1)
membership5 = Membership.new(50, gym1, lifter4)
membership6 = Membership.new(25, gym2, lifter6)
membership7 = Membership.new(100, gym3, lifter5)
membership8 = Membership.new(100, gym3, lifter7)



binding.pry

puts "Gains!"
