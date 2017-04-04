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

class Discount
  def calc(customer)
  end
end

class Student_Discount < Discount
  def calc(customer)
    customer.chargeable - (customer.chargeable * 0.1) + (customer.chargeable * 0.06)
  end
end

class Member_Discount < Discount
  def calc(customer)
    customer.chargeable - (customer.chargeable * 0.5) + (customer.chargeable * 0.06)
  end
end

class Normal_Discount < Discount
  def calc(customer)
    customer.chargeable + (customer.chargeable * 0.06)
  end
end


customer = Customer.new
customer.addOrder(1)
customer.addOrder(2)
customer.addOrder(3)
customer.addOrder(4)
customer.customerType(Member_Discount.new)
puts customer.checkout
