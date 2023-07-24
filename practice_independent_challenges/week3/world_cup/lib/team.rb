class Team
  attr_reader :country, :players
  attr_accessor :eliminated

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def add_player(player)
    @players.push(player)
    # alternative:
    # @players << player
  end

  def players_by_position(position)
    #.find_all returns ALL of the objects that return true in the code block -> so it'll return any player that meets the criteria
    #.find_all also ALWAYS returns an ARRAY / .select will return the collection type it's iterating over!!
    @players.find_all do |player|
      player.position == position
    end
  end
end