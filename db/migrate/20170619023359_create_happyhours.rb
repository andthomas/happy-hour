class CreateHappyhours < ActiveRecord::Migration[5.0]
  def change
    create_table :happyhours do |t|
      t.time :start
      t.time :end
      t.integer :venue_id
      t.integer :deal_id

      t.timestamps
    end
  end
end
