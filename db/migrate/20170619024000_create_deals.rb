class CreateDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :deals do |t|
      t.string :drink
      t.float :price
      t.string :description
      t.integer :happyhour_id

      t.timestamps
    end
  end
end
