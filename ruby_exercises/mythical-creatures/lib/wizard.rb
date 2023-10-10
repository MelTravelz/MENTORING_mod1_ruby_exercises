class Wizard 
  attr_reader :name

  def initialize(name)
    @name = name
    @bearded = true
  end

  #this type of method calls on a "default" attribute in initialize
  #we call this method outside the class instead of calling on the attribute directly
  def bearded?
    @bearded
  end
end