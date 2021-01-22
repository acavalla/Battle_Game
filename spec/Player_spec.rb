require "player"

describe "Player" do

  subject(:bill) { Player.new("Bill") }
  subject(:bob) { Player.new("Bob") }

  describe "#name" do
    it "returns the name" do
      expect(bill.name).to eq("Bill")
    end
  end

  describe "#hit_points" do
    it "returns the hit points" do
      expect(bill.hp).to eq(Player::DEFAULT_HIT_POINTS)
    end
  end

  describe "#attack" do
    it "damages the player" do
      expect(bob).to receive(:receive_damage)
      bill.attack(bob)
    end
  end

  describe "#receive_damage" do
    it "reduces the player hit points" do
      expect { bill.receive_damage }.to change { bill.hp }.by(-10)
    end
  end

end