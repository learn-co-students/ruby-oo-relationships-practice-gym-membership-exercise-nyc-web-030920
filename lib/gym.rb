class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    Gym.all << self
  end

  def memberships
    # all memberships at this gym
    Membership.all.select {|mship| mship.gym == self}
  end
  def lifters
    # list of lifters w/ memberships @ this gym
    self.memberships.map {|mship| mship.lifter}
  end
  def names
    # names of all lifters @ this gym
    self.lifters.map {|lifter| lifter.name}
  end
  def lift_total
    # combined lift total of every lifter @ this gym
    self.lifters.reduce(0) {|memo, lifter| memo + lifter.lift_total}
  end

  def self.all
    return @@all 
  end
end
