class AddActivityIdToRecommendation < ActiveRecord::Migration
  def change
    add_column :recommendations, :activity_id, :integer
  end
end
