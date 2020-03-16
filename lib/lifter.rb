class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << []
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |o|
      o.lifter == self
    end
  end
end
