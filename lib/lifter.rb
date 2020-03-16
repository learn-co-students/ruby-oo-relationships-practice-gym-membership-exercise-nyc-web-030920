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

  #get a list of all the memberships that a specific lifter has
  def memberships 
    Membership.all.select do |membership_instance|
      membership_instance.work_out == self 
    end
  end

  #get a list of all the gyms that a specific lifter has memberships to
  def gyms
    self.memberships.map do |membership_instance|
      membership_instance.gym 
    end
  end

  #get the average lift total of all lifters
  def average_lift_total
    num_of_lifters = Lifter.all.length 
    total_lifter_num = 0 
    Lifter.all.each do |lifter_instance|
      total_lifter_num += lifter_instance.lift_total
    end
    average = total_lifter_num/num_of_lifters 
    average
  end

  #get the total cost of a specific lifter's gym memberships
  def lifter_total_cost
    total_cost = 0 
    self.memberships.each do |membership_instance|
      total_cost += membership_instance.cost 
    end
    total_cost
  end

  #given a gym and a membership cost 
  #sign a specific lifter up for a new gym
  def new_gym(gym, cost)
    Membership.new(gym, self, cost)
  end

    
end
