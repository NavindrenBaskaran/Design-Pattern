require './Sort.rb'

class Sort_Asc < Sort
  def sort(list)
    list.sort!{|x, y| x <=> y}
  end
end
