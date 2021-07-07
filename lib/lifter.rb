class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

  def self.all 
    @@all
  end

  def memberships
    my_gym = Gym.all.select do |gym|
      gym.lifter == self 
    end
    my_gym.map do |gym|
      gym.membership
    end
  end

  def gyms 
    my_gym = Gym.all.select do |gym|
      gym.lifter == self 
    end
    my_gym.map do |gym|
      gym.name
  end
   
  def avg_lift 
    denominator = Lifter.all.lifter.uniq.count
    numerator = Lifter.all.lift_total.sum 
    numerator/denominator
  end

  def my_membership_costs 
    each_of_my_memberships = memberships.uniq 
    my_membership_costs = Memberships.all.select do |membership|
      membership==each_of_my_memberships
      membership.cost
      end 
    end
  end
    
    
  def new_one(gym, the_cost)
    this_membership = Membership.all.detect do |membership|
      membership.cost == the_cost
    end
    new_gym = Gym.new(gym, self, this_membership)
  end
 

end

# **Lifter**

#   - Get a list of all lifters --done-- @@all, self.all, Lifter.all << self

#   - Get a list of all the memberships that a specific lifter has --done-- memberships

#   - Get a list of all the gyms that a specific lifter has memberships to --done-- gyms

#   - Get the average lift total of all lifters --done-- avg_lift

#   - Get the total cost of a specific lifter's gym memberships --done-- my_membership_costs

#   - Given a gym and a membership cost, sign a specific lifter up for a new gym 