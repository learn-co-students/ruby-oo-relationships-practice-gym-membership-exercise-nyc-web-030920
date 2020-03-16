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
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    memberships.map do |membership|
      membership.lifter
    end
  end

  def lifter_names
    lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift
    combined_totals = 0

    lifters.map do |lifter|
      combined_totals += lifter.lift_total
    end

    combined_totals
  end




end
