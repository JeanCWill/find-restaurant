class AddPriceToMenu < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :price, :decimal
  end
end
