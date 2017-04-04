require './Discount.rb'

class Member_Discount < Discount
  def calc(customer)
    customer.chargeable - (customer.chargeable * 0.5) + (customer.chargeable * 0.06)
  end
end
