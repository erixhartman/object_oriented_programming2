class Item
  attr_accessor :name
  attr_reader :exempt, :cost, :import

  def initialize(name, cost, exempt, import)
  @name   = name
  @cost   = cost
  @exempt = exempt
  @import = import
#  @total_cost = cost * tax
end

  def exempt


    if true
      sales_tax  = 0
    else
      sales_tax  = @cost * 0.1
    end

  end

  def import
    total_cost = @cost + import_tax
    if true
      import_tax  = @cost * 0.05
    else
      import_tax  = 0
    end

  end

total_cost = @cost + sales_tax + import_tax
total_tax  = sales_tax + import_tax

end

x = Item.new("book", 17.99, true, false)

#make method for total cost based on
#behaviour of item is to give total_cost
