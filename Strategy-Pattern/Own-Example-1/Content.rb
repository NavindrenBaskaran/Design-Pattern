require './Sort_Asc.rb'
require './Sort_Desc.rb'

class Content
  def initialize(list, strategy)
    @list = list
    @strategy = strategy
  end
  def setSortStrategy(strategy)
    @strategy = strategy
  end
  def sortedList
    @strategy.sort(@list)
  end
end

list = ["Navindren", "Mohanavalli", "Thanentran"]
content = Content.new(list,Sort_Desc.new)
puts content.sortedList
