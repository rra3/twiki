class GroceryItemsReferencesItems < ActiveRecord::Migration
 def change
   change_table(:grocery_items) do |t|
     t.references :item
   end
 end
end
