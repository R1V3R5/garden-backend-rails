class CreateGardens < ActiveRecord::Migration[5.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.boolean :status
      t.integer :height
      t.integer :width
      t.string :tags
      t.integer :user_id

      t.timestamps
    end
  end
end
