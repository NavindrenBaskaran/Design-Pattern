require './Sort.rb'

class Sort_Desc < Sort
  def sort(list)
    list.sort!{|x, y| y <=> x}
  end
end
