require_relative 'item'
require_relative 'receipt'

receipt1 = Receipt.new
receipt2 = Receipt.new
receipt3 = Receipt.new

book = Item.new("book", 12.49, true, false, receipt1)
cd = Item.new("cd", 14.99, false, false, receipt1)
cb = Item.new("chocolate bar", 0.85, true, false, receipt1)
bc = Item.new("box of chocolates", 10.50, true, true, receipt2)
perfume = Item.new("bottle of perfume", 47.50, false, true, receipt2)
perfume2 = Item.new("bottle of perfume", 27.99, false, true, receipt3)
perfume3 = Item.new("bottle of perfume", 18.99, false, false, receipt3)
hp = Item.new("packet of headache pills", 9.75, true, false, receipt3)
ic = Item.new("box of chocolate", 11.25, true, true, receipt3)

puts receipt1.item_list
puts receipt2.item_list
puts receipt3.item_list
