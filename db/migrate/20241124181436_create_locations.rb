class CreateLocations < ActiveRecord::Migration[7.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :image
      t.string :description
      t.jsonb :years

      t.timestamps
    end
  end
end
