class AddAddressToLocations < ActiveRecord::Migration[7.2]
  def change
    add_column :locations, :address, :string
  end
end
