class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :railway_name
      t.text :station_name
      t.integer :walking_minutes
      t.references :property, foreign_key: true
      t.timestamps
    end
  end
end
