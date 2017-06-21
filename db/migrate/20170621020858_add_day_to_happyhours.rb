class AddDayToHappyhours < ActiveRecord::Migration[5.0]
  def change
    add_column :happyhours, :day, :string
  end
end
