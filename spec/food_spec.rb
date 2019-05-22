require('minitest/autorun')
require('minitest/rg')

require_relative('../food')

class FoodTest < MiniTest::Test

  def setup
    @food1 = Food.new('burger', 6, 10)
    @food2 = Food.new('pizza', 8, 20)
  end


end
