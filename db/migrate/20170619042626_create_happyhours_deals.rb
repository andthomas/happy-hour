class CreateHappyhoursDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :happyhours_deals do |t|
      t.integer :happyhour_id
      t.integer :deal_id
    end
  end
end
