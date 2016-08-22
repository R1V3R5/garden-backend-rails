class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :category
      t.text :common_problems
      t.string :family
      t.text :fertilizers
      t.string :hardy
      t.text :harvesting_how
      t.text :harvesting_when
      t.text :maintenance
      t.integer :maturity
      t.integer :production
      t.string :season
      t.text :secrets
      t.integer :seed_count
      t.text :seed_indoors
      t.text :seed_outdoors
      t.integer :seed_to_harvest
      t.integer :sun
      t.integer :size
      t.integer :water
      t.text :transplanting
      t.string :starting_location

      t.timestamps
    end
  end
end
