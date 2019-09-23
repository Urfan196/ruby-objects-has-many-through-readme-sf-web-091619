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

end
