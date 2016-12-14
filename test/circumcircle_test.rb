require_relative './test_helper'
require_relative '../lib/math_demo/circumcircle'

METHODS = [:center, :radius, :calculate]

class CircumcircleTest < Minitest::Test
  def setup
    points = [Vec2D.new(0, 0), Vec2D.new(50, 100), Vec2D.new(100, 50)]
    @circumcircle = Circumcircle.new(points)
  end

  def test_respond
    METHODS.each do |method_string|
      assert_respond_to @circumcircle, method_string
    end
  end

  def tear_down
    @circumcircle  = nil?
  end
end
