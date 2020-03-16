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

  def memberships
    Membership.all.select do |o|
      o.gym == self
    end
  end
  
  def lifters
      memberships.map do |o|
        o.lifter
      end
  end

  def lifter_names
    lifters.map do |o|
      o.name
    end
  end

  def lift_total
    total = 0
    lifters.map do |lifter|
     total += lifter.lift_total 
    end
    total
  end

end
