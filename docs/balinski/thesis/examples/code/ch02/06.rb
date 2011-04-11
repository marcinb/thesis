require 'test/unit'

class CalculatorTest < Test::Unit::TestCase
  def setup
    @calc = Calculator.new
  end

  def test_adding
    assert_equal 4, @calc.add(2, 2)
  end
  
  def test_substracting
    assert_equal 0, @calc.sub(2, 2)
  end
  
  def test_multiplying
    assert_equal 8, @calc.multiply(2, 4)
  end
  
  def test_dividing
    assert_equal 1, @calc.div(2, 2)
  end
end