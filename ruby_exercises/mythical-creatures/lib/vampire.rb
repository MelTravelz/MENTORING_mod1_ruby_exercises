class Vampire
  attr_reader :name, 
              :pet, 
              :thirsty

  def initialize(name, pet = 'bat')
    @name = name
    @pet = pet
    @thirsty = true
  end

  # This method does the same work as the attribute @thirsty
  # def thirsty
  #   true
  # end
end