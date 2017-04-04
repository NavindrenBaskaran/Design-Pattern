require './Discount.rb'

class Student_Discount < Discount
  def calc(customer)
    puts "Student Price"
    customer.chargeable - (customer.chargeable * 0.1) + (customer.chargeable * 0.06)
  end
end
