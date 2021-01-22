require 'game'

describe Game do

  let(:player_1) { double :player_1}
  let(:player_2) { double :player}
  subject {described_class.new(player_1, player_2)}
  
  describe "attack" do
    it 'damages the player' do
      expect(player_1).to receive(:receive_damage)
      subject.attack(player_1)
    end
  end

  it "has two players when starting a new game" do
    expect(subject.player_1).to eq(player_1)
  end

end
