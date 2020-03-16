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
    Membership.all.select do |o|
      o.lifter == self
    end
  end

  def gyms
    memberships.map do |o|
      o.gym
    end
  end

  def self.avg_lift_total
    total = Lifter.all.map{|lifter| lifter.lift_total}.sum
     total = total / Lifter.all.length
     total
  end

  def total_cost
    total = 0
    self.memberships.map do |membership|
      total += membership.cost
    end
    total
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end


end
