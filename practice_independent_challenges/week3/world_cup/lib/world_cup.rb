class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams_array)
    @year = year
    @teams = teams_array
  end

  def active_players_by_position(position)
    # why does .map not work? -> returned an Array of Arrays so you have to add a .flatten at the end 
    @teams.flat_map do |team|
      team.players_by_position(position)
    end
  end
end