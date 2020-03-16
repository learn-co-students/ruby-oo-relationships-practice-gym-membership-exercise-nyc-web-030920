class Gym
  attr_reader :name
  @@all = []
  # Method to initialize the class. 
  def initialize(name)
    @name = name
    Gym.all << self 
  end
  # Method to get a list of all Gyms. 
  def self.all 
    @@all 
  end 
  # Method to get a list of memberships at a specific Gym. 
  def memberships 
    Membership.all.select do |membership| 
      membership.gym == self 
    end 
  end 
  #Method to get a list of all the lifters that have a membership to the Gym. 
  def lifters 
    Membership.all.map do |membership| 
      membership.lifter 
    end 
  end 
  # Method to get a list of the names of all lifters that have a membership to that gym. 
  def names 
    Membership.all.map do |lifter| 
      lifter.name
    end 
  end 
  # Method to get the combined lift total of every lifter that has a membership to that gym. 
  def lift_totals 
    self.lifters.map do |lifter| 
      lifter.lift_total 
    end.sum 
  end 
end
