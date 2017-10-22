class ImagesOnFilms < ActiveRecord::Migration[5.1]
  def change
    drop_table :products
    
    create_table :products do |t|
      t.string   "name"
      t.text     "description"
      t.string   "image_url"
      t.integer  "price_in_cents"

      t.timestamps
    end
  end
end
