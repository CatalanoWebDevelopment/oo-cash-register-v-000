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
    total_discount = total * (discount/100).to_f
    self.total = total - total_discount
  end

end
