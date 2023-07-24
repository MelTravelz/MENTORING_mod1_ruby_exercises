class WorldCup
  attr_reader :year, :teams
  
  def initialize(year, teams_array)
    @year = year
    @teams = teams_array
  end
end