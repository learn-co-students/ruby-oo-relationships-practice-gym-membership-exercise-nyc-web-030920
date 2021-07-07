class Lifter
  attr_reader :name, :lift_total

  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self 
  end

  def self.all #Get a list of all lifters
    @@lifters
  end

  def new_membership(gym, cost) #Given a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(cost)
    @gym = gym
    @lifter = self 
  end

  def memberships #Get a list of all the memberships that a specific lifter has
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms #Get a list of all the gyms that a specific lifter has memberships to
    memberships.map do |membership|
      membership.gym 
    end
  end

  def lifters_count #helper to get count
    Lifter.all.count
  end

  def self.avg_lift_total #Get the average lift total of all lifters
    avg_lift_total = 0
    Lifter.all.each do |lifter|
      avg_lift_total += lifter.lift_total
    end
    return avg_lift_total/lifters_count
  end

  def total_cost #Get the total cost of a specific lifter's gym memberships
    total = 0
    memberships.each do |gym|
    total += gym.cost 
  end
  total 
  end 
end
