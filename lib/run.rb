require 'pry'
require_relative './gym.rb'
require_relative './lifter.rb'
require_relative './membership.rb'

lifter1 = Lifter.new("Robert", 200)
lifter2 = Lifter.new("Peter", 205)
lifter3 = Lifter.new("Elliot", 300)
lifter4 = Lifter.new("Georg", 350)

gym1 = Gym.new("Planet Fitness")
gym2 = Gym.new("Golds")
gym3 = Gym.new("LYFTS")
gym4 = Gym.new("The Dumbell")

membership1 = Membership.new(200, lifter1, gym1)
membership2 = Membership.new(200, lifter2, gym1)
membership3 = Membership.new(200, lifter3, gym2)
membership4 = Membership.new(200, lifter4, gym3)
membership5 = Membership.new(200, lifter2, gym4)
membership6 = Membership.new(200, lifter3, gym3)




binding.pry

puts "something"