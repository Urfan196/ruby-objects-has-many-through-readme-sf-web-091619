class Customer

@@all = []

attr_accessor :name, :age

  def initialize (name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    new_meal.map {|meal| meal.meal}
  end

  def waiters
   new_meal.map {|meal| meal.waiters}
  end

end
