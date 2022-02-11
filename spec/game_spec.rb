require './lib/game'

describe Game do
    let(:chris) { Player.new('Chris') }
    let(:eddie) { Player.new('Eddie') }
    let(:game) { described_class.new(chris, eddie)}
  it 'is initalized with 2 players' do
    expect(game.player1).to eq chris
    # expect(player1.name).to eq 'Chris'
    # expect(chris.name).to eq 'Chris'
  end

  describe "attack" do
    let(:charlotte) { Player.new('Charlotte') }
    let(:eddie) { Player.new('Eddie') }
    let(:game) { described_class.new(charlotte, eddie)}
    it "it reduces hp by 10" do
        # expect(game.attack(charlotte))
    expect { game.attack(eddie) }.to change { eddie.hp }.by -10
    end
  end
end