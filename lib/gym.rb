class Gym
  attr_reader :name
  @@gyms = []

  def initialize(name)
    @name = name
    Gym.all << self 
  end

  def self.all #Get a list of all gyms
    @@gyms
  end

  def memberships #Get a list of all memberships at a specific gym
    Membership.all.select do |memberships|
      memberships.gym == self
    end
  end

  def lifters #Get a list of all the lifters that have a membership to a specific gym
    self.memberships.select do |memberships|
      memberships.lifter
    end
  end

  def member_names #Get a list of the names of all lifters that have a membership to that gym
    lifters.select do |member|
      member.name
    end
  end

  def lift_total #Get the combined lift total of every lifter has a membership to that gym
    total = 0
    lifters.each do |lifter|
      lift_total += lifter.lift_total
    end
    total 
  end
end
