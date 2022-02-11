require 'player'

describe Player do
  let(:charlotte) { Player.new('Charlotte') }
  it "returns the player's name" do
    expect(charlotte.name).to eq "Charlotte"
  end

  it "it starts with an initial HP of 60" do
    expect(charlotte.hp).to eq 60
  end

end