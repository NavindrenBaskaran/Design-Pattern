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
    @chargeable = @chargeable + price
  end

  def customerType(type)
    @strategy = type
  end

  def checkout
    @strategy.calc(self)
  end
end

customer = Customer.new
customer.addOrder(1)
customer.addOrder(2)
customer.addOrder(3)
customer.addOrder(4)
customer.customerType(Member_Discount.new)
puts customer.checkout
