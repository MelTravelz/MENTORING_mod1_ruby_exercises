class Hobbit
  attr_reader :name,
              :disposition,
              :age

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end
end