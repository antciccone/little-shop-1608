class AddGeocoderInfoToTrip < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :latitude, :float
    add_column :trips, :longitude, :float
    add_column :trips, :address, :string
  end
end
