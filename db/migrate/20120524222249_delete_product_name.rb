class DeleteProductName < ActiveRecord::Migration
  
  
  def up
      remove_column :line_items, :productName
  end

  def down
  end
end
