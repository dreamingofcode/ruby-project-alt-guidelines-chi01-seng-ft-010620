class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.integer :artist_id
      t.integer :venue_id
      t.float :price
      t.string :date
    end
  end
end
