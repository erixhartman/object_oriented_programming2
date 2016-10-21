class Receipt

attr_accessor :item_list

  def initialize
    @item_list = []
  end

  def sub_total
    @item_list.each do |item|
      all_sub_total += item
    end
  end

  def tax_total
    @item_list.each do |item|
      all_tax_total += item
    end
  end

  def total_cost
    all_tax_total + all_sub_total
  end

  def report
    puts "1 #{name} at $#{cost}"


    puts "Sales Taxes: #{total_tax}"
    puts "Total:       #{total_amount}"
  end
end

# Instance variable = [items]
# method to add to array (<<)
