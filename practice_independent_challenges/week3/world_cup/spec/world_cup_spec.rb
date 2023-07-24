require "./lib/player"
require "./lib/team"
require './lib/world_cup'

RSpec.describe WorldCup do
  let(:france) { Team.new("France") }
  let(:croatia) { Team.new("Croatia")  }
  
  let(:mbappe) { Player.new({name: "Kylian Mbappe", position: "forward"}) }
  let(:pogba) { Player.new({name: "Paul Pogba", position: "midfielder"}) }
  
  let(:modric) { Player.new({name: "Luka Modric", position: "midfielder"}) }
  let(:vida) { Player.new({name: "Domagoj Vida", position: "defender"}) }
  
  let(:world_cup) { WorldCup.new(2018, [france, croatia]) }

  it "exists & has attributes" do
    # we don't need this information for this test do we:
    # france.add_player(mbappe)
    # france.add_player(pogba)
    # croatia.add_player(modric)
    # croatia.add_player(vida)

    expect(world_cup).to be_a(WorldCup)
    expect(world_cup.year).to eq(2018)
    expect(world_cup.teams).to eq([france, croatia])
  end

  it "returns all active players by position" do
    france.add_player(mbappe)
    france.add_player(pogba)
    croatia.add_player(modric)
    croatia.add_player(vida)

    expect(world_cup.active_players_by_position("midfielder")).to eq([pogba, modric])

    # for more robust testing, consider adding what it will NOT equal:
    # expect(world_cup.active_players_by_position("midfielder")).to_not eq([vida, mbappe])

    croatia.eliminated = true

    expect(world_cup.active_players_by_position("midfielder")).to eq([pogba])
  end

  it "returns all players by position" do
    france.add_player(mbappe)
    france.add_player(pogba)
    croatia.add_player(modric)
    croatia.add_player(vida)

    expected = {
      "forward" => [mbappe],
      "midfielder" => [pogba, modric],
      "defender" => [vida]
    }

    expect(world_cup.all_players_by_position).to eq(expected)
  end
end