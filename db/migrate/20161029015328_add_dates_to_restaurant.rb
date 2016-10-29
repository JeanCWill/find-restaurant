class AddDatesToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :open_sun, :boolean
    add_column :restaurants, :open_mon, :boolean
    add_column :restaurants, :open_tues, :boolean
    add_column :restaurants, :open_wed, :boolean
    add_column :restaurants, :open_thurs, :boolean
    add_column :restaurants, :open_fri, :boolean
    add_column :restaurants, :open_sat, :boolean
  end
end
