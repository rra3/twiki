class GroceryList < ActiveRecord::Base
  attr_accessible :description, :name, :items_attributes
  has_many :grocery_items, :dependent => :destroy
  has_many :items, :through => :grocery_items
  accepts_nested_attributes_for :items, :allow_destroy => true
end
