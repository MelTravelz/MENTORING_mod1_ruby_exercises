class Wizard 
  attr_reader :name

  def initialize(name, bearded: true) #we moved our "true by default" here which allows for optional arguemnts to be passed to the method
    @name = name
    @bearded = bearded #this allows the value to become whatever is passed through 
    @rested = true
  end

  #this type of method calls on a "default" attribute in initialize
  #we call this method outside the class instead of calling on the attribute directly
  def bearded?
    @bearded
  end

  def incantation(words)
    #Option 1: String Concatenation
    "sudo " + words

    #Option 2: String Interpolation 
    # "sudo #{words}" 
  end

  #see how this type of method only calls on an attribute that is NOT accessable outside the class
  def rested?
    @rested
  end

  def cast
    "MAGIC MISSILE!"
  end
end