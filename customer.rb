class Customer


  attr_reader :name, :wallet, :age, :drunk

    def initialize(name, wallet, age)
      @name = name
      @wallet = wallet
      @age = age
      @drunk = 0
    end

    def buy_drink(drink)
      increase_drunk(drink.alcohol)
      return @wallet -= drink.price
    end

    def increase_drunk(alcohol_level)
      @drunk += alcohol_level
    end

    def decrease_drunk(rejuvenation)
      @drunk -= rejuvenation
    end

    def buy_food(food)
      decrease_drunk(food.rj_lvl)
      return @wallet -= food.price
    end



end
