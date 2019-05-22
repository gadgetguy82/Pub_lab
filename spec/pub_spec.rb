require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class PubTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new('Vodka', 3, 40)
    @drink2 = Drink.new('Rum', 4, 38)
    @drink3 = Drink.new('Whisky', 5, 50)
    @drinks = {
      @drink1 => 4,
      @drink2 => 6,
      @drink3 => 10
    }
    @pub = Pub.new('A Pub', 500, @drinks)
    @name2 = Customer.new('Tom', 200, 30)
    @name1 = Customer.new('John', 100, 17)
  end

  def test_pub_name
    assert_equal('A Pub', @pub.name)
    assert_equal(500, @pub.till)
    assert_equal(@drinks, @pub.drinks)
  end

  def test_increase_money
    @name2.buy_drink(@drink2)
    @pub.increase_money(@drink2)
    assert_equal(504, @pub.till)
  end

  def test_check_age
    result = @pub.check_age(@name1)
    assert_equal(false, result)
  end

  def test_drunk_limit
    for counter in 0..2
      @name2.buy_drink(@drink3)
    end
    result = @pub.check_limit(@name2)
    assert_equal(true, result)
  end

  def test_get_stock_level
    result = @pub.drinks[@drink1]
    assert_equal(4, result)
  end

  def test_get_stock_value
    result = @pub.stock_value(@drink3)
    assert_equal(50, result)
  end

  def test_reduce_stock_value
    @pub.reduce_stock_value(@drink3)
    result = @pub.drinks[@drink3]
    assert_equal(9, result)
  end

end
