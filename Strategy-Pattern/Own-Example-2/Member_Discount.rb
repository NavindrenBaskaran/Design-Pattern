require './Discount.rb'

class Member_Discount < Discount
  def calc(customer)
    puts "Member Price"
    customer.chargeable - (customer.chargeable * 0.5) + (customer.chargeable * 0.06)
  end
end
