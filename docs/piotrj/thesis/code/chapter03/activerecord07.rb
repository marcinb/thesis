class Item < ActiveRecord::Base
  validates_presence_of :name
  validates_uniquness_of :name
  validates_presence_of :quantity
end

#Application code
item = Item.new(:name => "Item 1")
item.save     #=> false
item.errors   #=> {:quantity=>["can't be blank"]} 
item.quantity = 4
item.save     #=> true
item.errors   #=> {}

item2 = Item.new(:name => "Item 1", :quantity => 5)
item2.save    #=> false
item2.errors  #=> {:name=>["has already been taken"]} 
item2.name = "Item 2"
item2.save    #=> true