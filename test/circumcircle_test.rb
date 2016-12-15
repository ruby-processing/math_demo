require_relative './test_helper'
require_relative '../lib/math_demo/circumcircle'

METHODS = %i(center radius calculate).freeze

class CircumcircleTest < Minitest::Test
  def setup
    points = [Vec2D.new(100, 430), Vec2D.new(100, 70), Vec2D.new(500, 430)]
    # points = [Vec2D.new(100, 450), Vec2D.new(100, 50), Vec2D.new(500, 450)]
    @circumcircle = Circumcircle.new(points)
    @circumcircle.calculate
  end

  def test_respond
    METHODS.each do |method_string|
      assert_respond_to @circumcircle, method_string
    end
  end

  def test_radius
    assert_in_delta @circumcircle.radius, 269, 0.1
  end

  def test_center
    assert_equal @circumcircle.center, Vec2D.new(300, 250)
  end

  def tear_down
    @circumcircle  = nil?
  end
end
