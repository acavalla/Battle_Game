class Game

  attr_reader :player_1, :player_2, :current_turn, :lose

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def attack(player)
    player.receive_damage
    switch_turns
    lose
  end

  def switch_turns
    if current_turn == player_1
      @current_turn = player_2
    else
      @current_turn = player_1
    end
  end

  def lose
    player_1.hp <= 0 || player_2.hp <= 0
  end
end
