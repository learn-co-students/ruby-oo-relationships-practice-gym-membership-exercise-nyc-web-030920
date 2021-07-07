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

  def all_memberships
    Membership.all.select {|memberships| memberships.gym == self}
  end

  def all_lifters
    all_memberships.map{|memberships| memberships.lifter}
  end

  def all_lifters_names
    all_lifters.map {|lifters| lifters.name}
  end

  def all_lifters_total
    total = 0
    all_lifters.map {|lifters| total += lifters.lift_total}
    total
  end 

end
