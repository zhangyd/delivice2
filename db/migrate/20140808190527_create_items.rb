class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name
    	t.float :price
    	t.string :unit
    	t.integer :subcategory_id

    	t.timestamps
    end
  end
end
