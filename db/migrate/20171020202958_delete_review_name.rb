class DeleteReviewName < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :name
  end
end
