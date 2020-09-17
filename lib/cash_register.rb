require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount
  
  
  def initialize(discount = "0")
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price)
    @total += price
  end
  
end