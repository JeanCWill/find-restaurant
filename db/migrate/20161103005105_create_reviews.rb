class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :place
      t.integer :price
      t.integer :attendance
      t.integer :food
      t.string :descriprion
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
