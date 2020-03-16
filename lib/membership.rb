class Membership
  @@all = []
  attr_reader :cost, :gym, :lifter

  def initialize(lifter, gym , cost)
    @cost = cost
    @lifter = lifter
    @gym = gym
    Membership.all << self
  end

  def self.all
    return @@all
  end
end
