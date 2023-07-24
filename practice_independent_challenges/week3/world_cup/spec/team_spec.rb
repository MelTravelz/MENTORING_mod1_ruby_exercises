require "./lib/player"
require "./lib/team"

RSpec.describe Team do
  let(:team) { Team.new("France") }

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
end