require "./lib/player"
require "./lib/team"

RSpec.describe Team do
  let(:team) { Team.new("France") }

  let(:mbappe) { Player.new({name: "Kylian Mbappe", position: "forward"}) }
  let(:pogba) { Player.new({name: "Paul Pogba", position: "midfielder"}) }

  it "exsists & had attributes" do
    expect(team).to be_a(Team)
    expect(team.country).to eq("France")
    expect(team.eliminated).to eq(false)
    expect(team.players).to eq([])
  end

  it "checks if team has been eliminated" do
    expect(team.eliminated?).to eq(false)

    team.eliminated = true

    expect(team.eliminated?).to eq(true)
  end

  it "can add players to a team" do
    # optional since we already tested this
    # could use here to prove the two players were not part of the team to start
    expect(team.players).to eq([])

    team.add_player(mbappe)
    team.add_player(pogba) 

    expect(team.players).to eq([mbappe, pogba])
  end

  it "can return players based on their position" do
    team.add_player(mbappe)
    team.add_player(pogba) 

    expect(team.players_by_position("midfielder")).to eq([pogba])
    expect(team.players_by_position("defender")).to eq([])
  end
end