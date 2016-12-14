require_relative './test_helper'
require_relative '../lib/math_demo/pbisector'

METHODS = [:midpoint, :angle]

class PBisectorTest < Minitest::Test
  def setup
    @bisector = PBisector.new(Vec2D.new(1, 2), Vec2D.new(50, 100))
  end

  def test_respond
    METHODS.each do |method_string|
      assert_respond_to @bisector, method_string
    end
  end

  def tear_down
    @bisector  = nil?
  end
end
