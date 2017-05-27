require_relative 'game'

class Computer

  attr_reader :weapon

  def weapon
    Game::WEAPONS.sample
  end
end
