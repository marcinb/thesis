# CREATE TABLE items (
#   id SERIAL PRIMARY KEY,
#   name VARCHAR(255),
#   quantity INTEGER,
#   category_id INTEGER REFERENCES categories(id)
# );
#
# CREATE TABLE categories (
#   id SERIAL PRIMARY KEY,
#   name VARCHAR(255)
# );


class Item < ActiveRecord::Base
  belongs_to :category
end

class Category < ActiveRecord::Base
  has_many :items
end

# Application code
category = Category.new(:name => "Category 1")
category.save
item = Item.new(:name => "My Item")
item.category = category
item.save
