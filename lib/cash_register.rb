require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if discount > 0
      @total = @total * (1 - (discount/100))
      puts "After the discount, the total comes to $#{@total}."
      return total
    elsif discount = 0
      puts "There is no discount to apply"
    end
  end
  
end