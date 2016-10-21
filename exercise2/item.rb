class Item
  def initialize(cost, exempt, import)
  @cost   = cost
  @exempt = exempt
  @import = import

end

class Exempt < Item

  def exempt
    if true
      cost = cost
    else
      cost = cost * 1.1
    end
  end

end

end

class Import < Item

  def import
    if true
      cost = cost
    else
      cost = cost * 1.05
    end
  end

end

x = Item.new(17.99, true, false)
