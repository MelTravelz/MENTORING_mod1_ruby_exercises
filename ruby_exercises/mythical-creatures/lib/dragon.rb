class Dragon
  attr_reader :name, 
              :color,
              :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @hungry_counter = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @hungry_counter += 1
    @hungry = false if @hungry_counter >= 3
  end
end