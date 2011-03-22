item = Item.new
item.name = "Item 1"  #=> "Item 1"
item.quantity = 5     #=> 5
item.save             #=> true
# The item got persisted to database
# Now it is possible to retrive it:
item2 = Item.find(:first)
#=> <Item id:1, name: "Item 1", quantity: 5>
item2.name      #=> "Item 1"
item2.quantity  #=> 5

