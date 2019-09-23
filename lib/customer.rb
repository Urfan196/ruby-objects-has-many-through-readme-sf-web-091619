class Customer

@@all = []

attr_accessor :name, :age

  def intiliaze (name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal
    Meal.all.select {|meal| meal.customer == self}
  end

  def meals
    new_meal.map {|meal| meal.meal}
  end

  def waiters
   new_meal.map {|meal| meal.waiters}
  end

end
