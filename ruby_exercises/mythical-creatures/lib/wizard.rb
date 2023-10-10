class Wizard 
  attr_reader :name

  def initialize(name, bearded: true) #we moved our "true by default" here which allows for optional arguemnts to be passed to the method
    @name = name
    @bearded = bearded #this allows the value to become whatever is passed through 
    @rested = true
    @cast_count = 0
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
    check_cast_count #here we've created a "helper method"
    @rested
  end

  def cast
    @cast_count += 1 #here we've created a counter, that counts the number of time .cast is called
    "MAGIC MISSILE!"
  end

  def check_cast_count 
    if @cast_count <= 2 #if the count is 2 or less, wizard is rested
      @rested = true
    # elsif @cast_count >= 3 #We only use elsif when we need to describe the conditional, in this case we don't need it
    else  #if the count is 3 or more, wizard is NOT rested
      @rested = false
    end
    #last thing to notice is that there's not a way to reset the counter!? :) Maybe in the next one
  end
end