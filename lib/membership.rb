class Membership
  attr_reader :cost
  attr_accessor :gym, :lifter 
  @@all = []
  # Method to initialize the class. 
  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym 
    @lifter = lifter 
    Membership.all << self 
  end
  # Method to get a list of all memberships. 
  def self.all 
    @@all 
  end 
end
