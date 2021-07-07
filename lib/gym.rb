class Gym
  attr_reader :name
  attr_accessor :membership, :lifter

  @@all = []

  def initialize(name, membership, lifter)
    @name = name
    @membership = membership 
    @lifter = lifter
  end

  def self.all 
    @@all
  end

end

# **Gym**

#   - Get a list of all gyms --done!

#   - Get a list of all memberships at a specific gym --all!

#   - Get a list of all the lifters that have a membership to a specific gym --all!

#   - Get a list of the names of all lifters that have a membership to that gym -all!

#   - Get the combined lift total of every lifter has a membership to that gym -all!