class Player

  HIT_POINTS = 0

  attr_accessor :name, :hit_points, :turn

  def initialize(name, hit_points: HIT_POINTS)
    @turn = true
    @name = name
    @hit_points = hit_points
  end

  def hugs(opponent)
    @turn = !@turn
    opponent.hit_points += 10
  end

end
