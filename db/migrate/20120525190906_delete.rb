class Delete < ActiveRecord::Migration
  def up
    remove_column("line_items", "quantity")
  end

  def down
  end
end
