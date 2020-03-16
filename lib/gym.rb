class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Gym.all << self
  end

  def self.all 
    @@all 
  end

  #get a list of all memberships at a specific gym
  def memberships 
    Membership.all.select do |membership_instance|
      membership_instance.gym == self 
    end
  end

  #get a list of all the lifters that have a membership to a specific gym
  def lifters 
    self.memberships.map do |membership_instance|
      membership_instance.work_out 
    end
  end

  #get a list of the names of all lifters that have a membership to that gym
  def lifters_names
    self.lifters.map do |lifter_instance|
      lifter_instance.name 
    end
  end

  #get the combined lift total of every lifter has a membership to that gym
  def lift_totals
    self.lifters.map do |lifter|
      lifter.lift_total 
    end.sum 
  end
  
end

