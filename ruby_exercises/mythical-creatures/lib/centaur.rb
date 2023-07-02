class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    # @cranky = false
    @endurance = 3
    @standing = true
  end

  def shoot
    if cranky? == false && @standing == true
      @endurance -= 1
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    if @standing == true
      @endurance -= 1
      "Clop clop clop clop!"
    else 
      "NO!"
    end
  end

  def cranky?
    # @cranky
    #refactor to:
    # @endurance > 0 ? false : true #this is a Ternary Operator
    @endurance == 0
  end

  def standing? 
    @standing
  end

  def sleep
    "NO!" if @standing == true
  end

  def lay_down
    @standing = false
  end

  def laying? 
    # @standing == false
    !@standing
  end

  def stand_up
    @standing = true
  end
end