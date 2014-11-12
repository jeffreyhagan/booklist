class CreateActivitiesBooks < ActiveRecord::Migration
  def change
    create_table :activities_books do |t|
      t.integer :activity_id
      t.integer :book_id
    end
  end
end
