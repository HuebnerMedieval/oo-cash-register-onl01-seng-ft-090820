require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @items << item
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
    
  end
  
end