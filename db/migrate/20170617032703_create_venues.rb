class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.string :category
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
