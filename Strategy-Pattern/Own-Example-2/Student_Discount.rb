require './Discount.rb'

class Student_Discount < Discount
  def calc(customer)
    customer.chargeable - (customer.chargeable * 0.1) + (customer.chargeable * 0.06)
  end
end
