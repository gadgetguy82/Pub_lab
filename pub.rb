class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
    @drunk_limit = 100
  end

  def increase_money(drink)
    return @till += drink.price
  end

  def check_age(customer)
    if customer.age <= 17
      return false
    else
      return true
    end
  end

  def check_limit(customer)
    if customer.drunk >= @drunk_limit
      return true
    else
      return false
    end
  end

  def stock_value(drink)
    return @drinks[drink] * drink.price
  end

  def reduce_stock_value(drink)
    return @drinks[drink] -= 1
  end





end
