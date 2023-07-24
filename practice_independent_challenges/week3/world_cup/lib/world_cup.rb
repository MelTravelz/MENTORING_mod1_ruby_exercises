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

  def all_players_by_position
    # To start: add a binding.pry and type self to see what you have access to

    # we can build a literal hash in the method, but then we call the previous method multiple times:
    # {
    #   "forward" => active_players_by_position("forward"),
    #   "midfielder" => active_players_by_position("midfielder"),
    #   "defender" => active_players_by_position("defender")
    # }

    # Here, we can easily add another position and it leaves the code more dynamic:
    positions = ["forward", "midfielder", "defender"]
    players_by_position_hash = Hash.new

    positions.each do |position|
      players_by_position_hash[position] = active_players_by_position(position)
    end

    players_by_position_hash
  end
end