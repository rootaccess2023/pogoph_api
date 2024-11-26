class AddRegionToLocations < ActiveRecord::Migration[7.2]
  def change
    add_column :locations, :region, :string
  end
end
