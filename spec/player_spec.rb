require 'player'

describe Player do
  let(:charlotte) { Player.new('Charlotte') }
  it "returns the player's name" do
    expect(charlotte.name).to eq "Charlotte"
  end
end