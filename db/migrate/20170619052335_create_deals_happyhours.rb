class CreateDealsHappyhours < ActiveRecord::Migration[5.0]
  def change
    create_table :deals_happyhours do |t|
      t.integer :deal_id
      t.integer :happyhour_id
    end
  end
end
