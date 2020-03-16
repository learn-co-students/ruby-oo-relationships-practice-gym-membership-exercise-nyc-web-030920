class Lifter

  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

  def memberships
    # all memberships for specific lifter
    Membership.all.select {|mship| mship.lifter == self}
  end
  def gyms
    # all gyms that lifter has memberships to
    self.memberships.map {|mship| mship.gym}
  end
  def cost
    # total cost of lifter's gym memberships
    self.memberships.sum {|mship| mship.cost}
  end
  def sign_up(gym, cost)
    # sign up lifter for new gym
    Membership.new(self, gym, cost)
  end

  def self.lift_total
    self.all.sum {|lifter| lifter.lift_total}
  end
  def self.mean_lift_total
    # average lift total of all lifters
    self.lift_total / self.all.count
  end
  def self.all
    return @@all
  end
end
