class CashRegister
  attr_accessor :cash_register_with_discount, :discount, :total

  def initialize(cash_register_with_discount=0)
    @discount = cash_register_with_discount
    @total = 0
  end

  def add_item(title, price, quantity=1)
    self.total = total + (price * quantity)
  end

  def apply_discount
    discounted = total * discount
    if discounted == true
      puts "After the discount, the total comes to #{total}."
    end
  end

end
