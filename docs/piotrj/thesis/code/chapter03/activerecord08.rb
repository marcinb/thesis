class AddItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string  :name
      t.integer :quantity
    end
  end

  def self.down
    drop_table :items
  end
end