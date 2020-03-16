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




binding.pry

puts "Gains!"
