class AddQuantity < ActiveRecord::Migration
  def up
    add_column("line_items", "quantity", :integer)
  end

  def down
    remove_column("line_items", "quantity")
  end
end
