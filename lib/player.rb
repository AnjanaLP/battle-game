class Player

  attr_reader :name

  DEFAULT_HIT_POINTS = 60

  def initialize(name, hit_points = 60)
    @name = name
    @hit_points = hit_points
  end

  def hit_points
    @hit_points
  end

  def receive_damage
    @hit_points -= 10
  end
end
