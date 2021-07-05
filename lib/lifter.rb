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

  def new_gym(cost, gym)
      Membership.new(cost, gym, self)
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end
  #need to use select to return the elements I want. map will return the result of the comparison on every element instead of the elements that return true

  def gyms
    memberships.map do |membership|
      if membership.lifter == self
        membership.gym.name #don't use 'return' keyword unless you want it to break out of the .map method after the first entry that matches
      end
    end.delete_if{|gym| gym == nil}
  end

  def self.avg_lift_total
    sum = 0

    Lifter.all.map do |lifter|
      sum += lifter.lift_total
    end

    avg_lift_total = sum / Lifter.all.count

    avg_lift_total

  end

  def total_cost
    total_cost = 0
    
    memberships.map do |membership|
      total_cost += membership.cost
    end

    total_cost
  end






end
