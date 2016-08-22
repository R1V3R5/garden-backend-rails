class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.integer :garden_id
      t.integer :dom_id
      t.integer :plant_id

      t.timestamps
    end
  end
end
