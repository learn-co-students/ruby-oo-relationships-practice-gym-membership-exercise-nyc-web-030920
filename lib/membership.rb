class Membership
  attr_reader :cost

  @@all 

  def initialize(cost)
    @cost = cost
    Membership.all << self
  end
end

# **Membership**

#   - Get a list of all memberships