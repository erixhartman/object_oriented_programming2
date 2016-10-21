class Receipt

attr_accessor :item_list

  def initialize
    @item_list = []
  end

  def sub_total
      all_sub_total = 0
    @item_list.each do |item|
      all_sub_total += item.cost
    end
    all_sub_total
  end

  def tax_total
      all_tax_total = 0
    @item_list.each do |item|
      all_tax_total += item.total_tax
    end
    all_tax_total
  end

  def total_cost
    tax_total + sub_total
  end

  def report
    @item_list.each do |item|
      puts "1 #{item.name} at $#{item.cost}"
    end
    puts ""
    puts ""
    puts "Sales Taxes: #{'%.2f' % tax_total}"
    puts "Total:       #{'%.2f' % total_cost}"
    puts ""
    puts ""
  end
end

# Instance variable = [items]
# method to add to array (<<)
