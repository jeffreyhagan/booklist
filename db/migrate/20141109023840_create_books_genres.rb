class CreateBooksGenres < ActiveRecord::Migration
  def change
    create_table :books_genres do |t|
      t.integer :book_id
      t.integer :genre_id
    end
  end
end
