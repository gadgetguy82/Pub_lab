require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new('Vodka', 3)
    @drink2 = Drink.new('Rum', 4)
    @drink3 = Drink.new('Whisky', 5)
  end

  def test_name_of_the_drink
    assert_equal('Vodka', @drink1.name)
  end



end
