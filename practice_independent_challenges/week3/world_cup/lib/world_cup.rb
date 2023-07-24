class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams_array)
    @year = year
    @teams = teams_array
  end

  def active_players_by_position(position)
    # # why does .map not work? -> returned an Array of Arrays so you have to add a .flatten at the end 
    @teams.flat_map do |team|
      team.players_by_position(position) if team.eliminated? == false
    end.compact

    ##### Another working example:
    # selected_players = [] #made an accumulator

    # @teams.each do |team|
    #   unless team.eliminated? # unless .eliminted? == true
    #     players = team.players_by_position(position)
    #     selected_players.concat(players) #.concat combines 2 or more arrays into 1 array!
    #   end
    # end
    # selected_players
  end
end