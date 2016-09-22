class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :companyNmae
      t.string :description
      t.string :cnpj
      t.string :fantasyName
      t.decimal :latitude, :decimal, :precision => 13, :scale => 11
      t.decimal :longitude, :decimal, :precision => 13, :scale => 11
      t.references :city, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
