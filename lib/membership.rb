class Membership
  attr_reader :cost, :lifter, :gym 
  @@memberships = []

  def initialize(cost)
    @cost = cost
    @lifter = nil
    @gym = nil 
    Membership.all << self
  end

  def self.all #Get a list of all memberships
    @@memberships
  end

end
