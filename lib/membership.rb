class Membership
  attr_reader :cost, :lifter, :gym 
  @@memberships = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @lifter = lifter
    @gym = gym
    Membership.all << self
  end

  def self.all #Get a list of all memberships
    @@memberships
  end

end
