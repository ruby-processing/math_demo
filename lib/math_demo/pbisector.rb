require 'propane'

# Perpendicular Bisector class, takes two points as Vec2D objects
class PBisector
  attr_reader :midpoint, :angle
  def initialize(a, b)
    @midpoint = (a + b) /  2.0
    dvector = b - a
    @angle = Math.atan2(dvector.y, dvector.x) - Math::PI / 2
  end
end
