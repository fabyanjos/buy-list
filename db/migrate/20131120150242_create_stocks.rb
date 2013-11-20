class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :priority
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
