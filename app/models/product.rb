class Product < ActiveRecord::Base
  attr_accessible :description, :name, :weight, :category_id
  belongs_to :category
  has_many :stocks
  has_many :users, :through => :stocks
end
