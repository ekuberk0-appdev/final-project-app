class AddAvailabilityToOfferings < ActiveRecord::Migration[6.0]
  def change
    add_column :offerings, :availability, :datetime
  end
end
