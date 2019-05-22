require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')
require_relative('../drink')
require_relative('../pub')


class CustomerTest < MiniTest::Test

  def setup()
    @name1 = Customer.new('John', 100, 17)
    @name2 = Customer.new('Tom', 200, 30)
    @drink2 = Drink.new('Rum', 4, 38)
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

end
