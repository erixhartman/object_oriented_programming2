class Item
  attr_accessor :name
  attr_reader :exempt, :cost, :import, :sales_tax, :import_tax

  def initialize(name, cost, exempt, import, receipt)
    @name   = name
    @cost   = cost
    @exempt = exempt
    @import = import
#  @total_cost = cost * tax
    @cost.to_f
    receipt.item_list << self
    set_sales_tax
    set_import_tax
  end

  def set_sales_tax

    if @exempt
      @sales_tax  = 0
    else
      @sales_tax  = @cost * 0.1
    end

  end

  def set_import_tax

    if @import
      @import_tax  = @cost * 0.05
    else
      @import_tax  = 0
    end

  end

  def total_tax
    @sales_tax + @import_tax
  end

  def total_cost
    @cost + total_tax
  end

end


#make method for total cost based on
#behaviour of item is to give total_cost
