class CreateGroceryLists < ActiveRecord::Migration
  def change
    create_table :grocery_lists do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
