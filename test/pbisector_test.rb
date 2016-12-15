require_relative './test_helper'
require_relative '../lib/math_demo/pbisector'

METHODS = %i(midpoint angle).freeze

class PBisectorTest < Minitest::Test
  def setup
    @bisector = PBisector.new(Vec2D.new(100, 50), Vec2D.new(500, 350))
  end

  def test_respond
    METHODS.each do |method_string|
      assert_respond_to @bisector, method_string
    end
  end

  def test_midpoint
    assert_equal @bisector.midpoint, Vec2D.new(300, 200)
  end

  def test_angle # Angle of bisector to the 3, 4, 5 triangle
    assert_in_delta @bisector.angle, 36.87.radians - Math::PI / 2
  end

  def tear_down
    @bisector  = nil?
  end
end
