class DropReviewsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :reviews

    create_table :reviews do |t|
      t.text :content
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
