require 'test/unit'

class CalculatorTest < Test::Unit::TestCase
  def test_adding
    calc = Calculator.new
    assert calc.add(2, 2) == 4
  end
  
  def test_substracting
    calc = Calculator.new
    assert calc.sub(2, 2) == 0
  end
  
  def test_multiplying
    calc = Calculator.new
    assert calc.multiply(2, 4) == 8
  end
  
  def test_dividing
    calc = Calculator.new
    assert calc.div(2, 2) == 1
  end
end