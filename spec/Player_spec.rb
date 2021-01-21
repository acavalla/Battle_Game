require 'player'

describe 'Player' do
  subject(:player) {Player.new('Bill')}

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq "Bill"
    end
  end

end