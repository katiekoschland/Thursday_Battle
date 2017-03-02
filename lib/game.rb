require 'player'

class Game

  def initialize(player_attacking)
end

  def attack(player_attacked)
    player_attacked.receive_damage
  end

end
