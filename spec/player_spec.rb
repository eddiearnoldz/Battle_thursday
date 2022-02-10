require 'player'

describe Player do
  let(:charlotte) { Player.new('Charlotte') }
  it "returns the player's name" do
    expect(charlotte.name).to eq "Charlotte"
  end

  it "it starts with an initial HP of 60" do
    expect(charlotte.hp).to eq 60
  end

  describe "attack" do
    let(:charlotte) { Player.new('Charlotte') }
    let(:eddie) { Player.new('Eddie') }
    it "it reduces hp by 10" do
      expect { charlotte.attack( eddie) }.to change { eddie.hp }.by -10
    end
  end
end