class Player

  attr_reader :name, :hp

  def initialize(name, hp = 60)
    @name = name
    @hp = 60
  end

  def attack(player)
    player.reduces_hp
  end

  def reduces_hp
    @hp -= 10
  end

end