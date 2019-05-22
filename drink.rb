class Drink

  attr_reader :name, :price, :alcohol

  def initialize(name, price, alcohol)
    @name = name
    @price = price
    @alcohol = alcohol
  end

  # def alcohol()
  #   return @alcohol
  # end

end
