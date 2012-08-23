class Item < ActiveRecord::Base
  attr_accessible :description, :name, :price
  has_many :grocery_items
  has_many :grocery_lists, :through => :grocery_items
end
