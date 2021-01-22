require 'game'

describe Game do
  let(:player_1) { double :player}
  describe "attack" do
    it 'damages the player' do
      expect(player_1).to receive(:receive_damage)
      subject.attack(player_1)
    end
  end
end
