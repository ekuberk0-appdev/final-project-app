class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.text :notes
      t.string :image
      t.integer :offering_id

      t.timestamps
    end
  end
end
