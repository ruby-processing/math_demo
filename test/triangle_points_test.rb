#!/usr/bin/env jruby
require_relative './test_helper'
require_relative '../lib/math_demo/t_points'
require_relative '../lib/math_demo/triangle_point'
# NB: uncomment line 6 triangle_point.rb for testing

METHODS = %i(each map size shift clear [] collinear? full?).freeze

class TrianglePointsTest < Minitest::Test
  def setup
    @tpoints = TrianglePoints.new
    @tpoints << TPoint.new(Vec2D.new(0, 0))
    @tpoints << TPoint.new(Vec2D.new(100, 100))
    @tpoints << TPoint.new(Vec2D.new(300, 300))
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
