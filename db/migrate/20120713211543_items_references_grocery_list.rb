class ItemsReferencesGroceryList < ActiveRecord::Migration
 def change
  change_table(:grocery_items) do |t|
    t.references :grocery_list
  end
 end
 
end
