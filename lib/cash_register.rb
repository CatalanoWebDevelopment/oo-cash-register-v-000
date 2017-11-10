require 'pry'

class CashRegister
  attr_accessor :cash_register_with_discount, :discount, :total

  def initialize(cash_register_with_discount=0)
    self.items = []
    @discount = cash_register_with_discount
    @total = 0
  end

  def add_item(title, price, quantity=1)
    self.total = total + (price * quantity)
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      discounted = (discount * total)/100
      self.total = total - discounted
      "After the discount, the total comes to $#{total}."
    end
  end

  def items
    @@items << @title
  end

  def void_last_transaction
    @@items.last.pop
  end

end
