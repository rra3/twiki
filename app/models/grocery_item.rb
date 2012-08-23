class GroceryItem < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :grocery_list
  belongs_to :item
end
