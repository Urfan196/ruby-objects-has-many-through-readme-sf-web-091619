class Waiter

@all = []

attr_accessor :name, :years

  def method_name (name, years)
    @name = name
    @years = years
  end

  def self.all
    @all
  end

end
