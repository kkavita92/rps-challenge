require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :result

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { :scissors => :paper, :paper => :rock, :rock => :scissors }

  def initialize(player_1 = Player.new, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def battle
    if @player_1.weapon == @player_2.weapon
      :draw
    elsif RULES[@player_1.weapon]  == @player_2.weapon
      :won
    else
      :lose
    end
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

end
