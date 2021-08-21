class CreateServiceProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :service_providers do |t|
      t.string :name
      t.string :address
      t.integer :neighborhood_id
      t.string :image
      t.time :availability
      t.string :email
      t.string :phone
      t.integer :service_locations_count
      t.integer :offerings_count
      t.integer :reviews_count

      t.timestamps
    end
  end
end
