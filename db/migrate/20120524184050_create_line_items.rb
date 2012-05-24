class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :productName
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
