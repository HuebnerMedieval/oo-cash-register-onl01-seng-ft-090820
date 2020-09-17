require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = {}
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << item}
    @last_transaction["Item"] = item
    @last_transaction["Price"] = price
    @last_transaction["Quantity"] = quantity
  end
  
  def apply_discount
    if @discount > 0
      @total = @total * ((100.0 - discount)/100.0)
      "After the discount, the total comes to $#{@total.round}."
    elsif discount = 0
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    
  end
  
end