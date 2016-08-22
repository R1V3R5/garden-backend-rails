class CreateGardenJournals < ActiveRecord::Migration[5.0]
  def change
    create_table :garden_journals do |t|
      t.text :content
      t.integer :garden_id

      t.timestamps
    end
  end
end
