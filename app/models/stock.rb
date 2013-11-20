class Stock < ActiveRecord::Base
  attr_accessible :price, :priority, :product_id, :quantity, :user_id
  belongs_to :product
  belongs_to :user
end
