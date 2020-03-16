class Membership
  attr_reader :gym, :work_out, :cost
  @@all = []

  #membership should have: name of the member, gym, work-out type, cost 
  def initialize(gym, work_out, cost)
    @gym = gym
    @work_out = work_out
    @cost = cost
    Membership.all << self
  end

  def self.all 
    @@all 
  end


end
