class Wizard 
  attr_reader :name

  def initialize(name, bearded: true) #we moved our "true by default" here which allows for optional arguemnts to be passed to the method
    @name = name
    @bearded = bearded #this allows the value to become whatever is passed through 
  end

  #this type of method calls on a "default" attribute in initialize
  #we call this method outside the class instead of calling on the attribute directly
  def bearded?
    @bearded
  end
end