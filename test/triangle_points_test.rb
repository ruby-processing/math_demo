require_relative './test_helper'
require_relative '../lib/math_demo/triangle_points'

METHODS = %i(each map size shift clear [] collinear? full?).freeze

class TrianglePointsTest < Minitest::Test
  def setup
    @tpoints = TrianglePoints.new
    @tpoints << Vec2D.new(0, 0)
    @tpoints << Vec2D.new(100, 100)
    @tpoints << Vec2D.new(300, 300)
  end

  def test_respond
    METHODS.each do |method_string|
      assert_respond_to @tpoints, method_string
    end
  end

  def test_collinear_true
    assert @tpoints.collinear?
  end

  def test_full_true
    assert @tpoints.full?
  end

  def tear_down
    @tpoints = nil?
  end
end
