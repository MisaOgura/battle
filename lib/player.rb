class Player

  HIT_POINTS = 0

  attr_accessor :name, :hit_points

  def initialize(name, hit_points: HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def hugs(opponent)
    opponent.hit_points += 10
  end

end
