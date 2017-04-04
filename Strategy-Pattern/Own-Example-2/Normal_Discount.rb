require './Discount.rb'

class Normal_Discount < Discount
  def calc(customer)
    customer.chargeable + (customer.chargeable * 0.06)
  end
end
