class Pirate
  attr_reader :name, :job

  def initialize(name, job = "Scallywag") #job is now an 'optional argument'
    @name = name
    @job = job
    @cursed = false #the pirates is NOT cursed by default

    # This does not allow us to change the default value:
    # @job = "Scallywag"
  end

  def cursed?
    @cursed
  end
  #it's conventional to have question-mark methods check attributes
  #the attribute @cursed is then NOT called outside the method, so we do NOT put it in the attr_reader

  def commit_heinous_act

  end
end