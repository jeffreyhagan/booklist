class AddBookIdToRecommendation < ActiveRecord::Migration
  def change
    add_column :recommendations, :book_id, :integer
  end
end
