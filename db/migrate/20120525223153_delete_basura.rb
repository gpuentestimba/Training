class DeleteBasura < ActiveRecord::Migration
  def up
      drop_table :basuras
  end

  def down
  end
end
