class CreateReviewMobiles < ActiveRecord::Migration[5.0]
  def change
    create_table :review_mobiles do |t|

      t.timestamps
    end
  end
end
