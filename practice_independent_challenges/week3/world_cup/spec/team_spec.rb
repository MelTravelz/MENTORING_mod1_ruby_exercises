require "./lib/player"
require "./lib/team"

RSpec.describe Team do
  let(:team) { Team.new("France") }
  describe "#initialize" do
    it "exsists & had attributes" do
      expect(team).to be_a(Team)
      expect(team.country).to eq("France")
    end
  end
end