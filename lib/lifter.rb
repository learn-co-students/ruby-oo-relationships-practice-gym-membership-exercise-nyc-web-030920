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

  def all_memberships
    Membership.all.select {|memberships| memberships.lifter == self}
  end

  def all_gyms
    all_memberships.map {|memberships| memberships.gym}
  end

  def self.lift_total_average
    total = 0
    self.all.map {|all| total += all.lift_total}
    total.to_f / self.all.size
    #binding.pry
  end

  def memberships_total
    total = 0
    all_memberships.map {|memberships| total += memberships.cost}
    total
  end

  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end
end
