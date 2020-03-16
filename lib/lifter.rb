class Lifter
  attr_reader :name, :lift_total
  @@all = []
  # Method to initialize the class. 
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self 
  end
  # Method to get a list of all lifters. 
  def self.all 
    @@all 
  end 
  # Method to get a list of all the memberships that a specific lifter has. 
  def memberships 
    Membership.all.select do |membership| 
      membership.lifter == self 
    end 
  end 
  # Method to get a list of all the gyms that a specific lifter has memberships to. 
  def gyms 
    Membership.all.map do |membership| 
      membership.gym 
    end 
  end 
  # Method to get the total cost of a specific lifter's gym memberships. 
  def cost 
    self.memberships.sum do |membership| 
      membership.cost 
    end 
  end 
  # Methods to get the average lift total of all lifters. 
  # Helper method to get the lift total. 
  def self.lift_total 
    self.all.sum do |lifter| 
      lifter.lift_total 
    end 
  end 
  # Method to calculate average. 
  def self.average_lift_total 
    self.lift_total / self.all.count 
  end 
  # Given a gym and a membership cost, sign a specific lifter up for a new gym. 
  def signup(gym, cost)
    Membership.new(self, gym, cost) 
  end 
end
