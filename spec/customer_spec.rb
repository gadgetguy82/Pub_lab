require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')
require_relative('../drink')
# require_relative('../pub')
require_relative('../food')


class CustomerTest < MiniTest::Test

  def setup()
    @name1 = Customer.new('John', 100, 17)
    @name2 = Customer.new('Tom', 200, 30)
    @drink2 = Drink.new('Rum', 4, 38)
    @food1 = Food.new('burger', 6, 10)
  end

    def test_name_of_the_customer
      assert_equal('John', @name1.name)
    end

    def test_wallet_amount
      assert_equal(100, @name1.wallet)
    end

    def test_buy_drink()
      @name2.buy_drink(@drink2)
      assert_equal(196, @name2.wallet)
    end

    def test_increase_drunk()
      @name2.buy_drink(@drink2)
      assert_equal(38, @name2.drunk)
    end

    def test_decrease_drunk()
      @name1.buy_food(@food1)
      assert_equal(-10, @name1.drunk)
    end

    def test_buy_food()
      @name1.buy_food(@food1)
      assert_equal(94, @name1.wallet)
    end

end
