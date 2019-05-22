require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new('Vodka', 3, 40)
    @drink2 = Drink.new('Rum', 4, 38)
    @drink3 = Drink.new('Whisky', 5, 50)
  end

  def test_name_of_the_drink
    assert_equal('Vodka', @drink1.name)
  end

  def test_price_of_the_drink
    assert_equal(3, @drink1.price)
  end

  def test_alcohol_level
    assert_equal(40, @drink1.alcohol)
  end

end
