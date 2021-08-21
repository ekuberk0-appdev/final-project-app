class CreateOfferings < ActiveRecord::Migration[6.0]
  def change
    create_table :offerings do |t|
      t.integer :service_id
      t.integer :service_provider_id
      t.integer :favorites_count

      t.timestamps
    end
  end
end
