class Player

  attr_reader :name, :hp, :attacked

  def initialize(name, hp = 60)
    @name = name
    @hp = 60
    @attacked = false
  end

  def attack_status
    @attacked = true
    p self.attacked
  end

  def reduces_hp
    @hp -= 10
  end

end