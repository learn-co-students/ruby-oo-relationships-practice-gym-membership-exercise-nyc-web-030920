# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("Gold's Gym")
gym2 = Gym.new("Planet Fitness")
gym3 = Gym.new("Equinox")

lifter1 = Lifter.new("Mark", 300)
lifter2 = Lifter.new("Nicole", 200)
lifter3 = Lifter.new("Rob", 100)

membership1 = Membership.new(gym1, lifter1, 50)
membership2 = Membership.new(gym2, lifter2, 25)
membership3 = Membership.new(gym3, lifter3, 100)
membership4 = Membership.new(gym3, lifter1, 100)



binding.pry

puts "Gains!"


