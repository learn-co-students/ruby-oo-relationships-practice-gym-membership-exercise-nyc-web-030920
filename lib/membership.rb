class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym
  @@all = []

  def initialize(cost, lifter=nil, gym=nil)
    @cost = cost
    @lifter = lifter
    @gym = gym
    Membership.all << self
  end

  def self.all
    @@all
  end
  
end
