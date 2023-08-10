class Hobbit
  attr_reader :name,
              :disposition,
              :age
              # attributes can be read only & from outside this class/init-method

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
    @short = true
    #to manipulate data within the class, must call on these attributes directly (with the @ symbol) 
  end

  def celebrate_birthday
    # will work because it's being called directly (can be changed):
    @age += 1

    # wont work because it's being called from the attr_reader (read only):
    # age += 1
  end

  def adult?
    # if @age >= 33 
    #   true
    # else 
    #   false
    # end

    #This is a ternary operator:
    age >= 33 ? true : false
  end

  def old?
    # if @age >= 101
    #   true
    # else 
    #   false
    # end

    age >= 101 ? true : false
  end

  def has_ring?
    # if name == "Frodo"
    #   true
    # else
    #   false
    # end

    name == "Frodo" ? true : false
  end

  def short?
    # must call this with the @ because it was NOT put in the attr_reader (possible to manipulate data here too):
    @short

    # this would also work if commented out @short in initialize:
    # true
  end
end