class CreateServiceLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :service_locations do |t|
      t.integer :neighborhood_id
      t.integer :service_provider_id

      t.timestamps
    end
  end
end
