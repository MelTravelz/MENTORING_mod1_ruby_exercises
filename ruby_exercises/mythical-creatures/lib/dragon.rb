class Dragon
  attr_reader :name, 
              :color,
              :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
  end

  def hungry?
    @hungry
  end
end