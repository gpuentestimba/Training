class CreateBasuras < ActiveRecord::Migration
  def change
    create_table :basuras do |t|

      t.timestamps
    end
  end
end
