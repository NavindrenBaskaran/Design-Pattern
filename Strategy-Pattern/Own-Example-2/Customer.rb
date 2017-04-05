require './Discount.rb'
require './Student_Discount.rb'
require './Member_Discount.rb'
require './Normal_Discount.rb'

class Customer
  attr_reader :chargeable
  def initialize
    @chargeable = 0
    @strategy = Normal_Discount.new
  end

  def addOrder(price)
    price.each do |x|
      @chargeable = @chargeable + x
    end
  end

  def customerType(type)
    @strategy = type
  end

  def checkout
    @strategy.calc(self)
  end
end


menu = [10.50, 15.60, 17.90, 35.90]
customer = Customer.new
customer.addOrder(menu)
customer.customerType(Member_Discount.new)
puts customer.checkout
