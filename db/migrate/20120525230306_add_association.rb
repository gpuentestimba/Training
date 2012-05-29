class AddAssociation < ActiveRecord::Migration
  def up
    add_column("line_items", "cart_id", :integer)
    add_column("line_items", "product_id", :integer)
  end

  def down
  end
end
