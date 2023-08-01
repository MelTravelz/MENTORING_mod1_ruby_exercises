class Pirate
  attr_reader :name, :job

  def initialize(name, job = "Scallywag") #job is now an 'optional argument'
    @name = name
    @job = job
    # This does not allow us to change the default value:
    # @job = "Scallywag"
  end


end