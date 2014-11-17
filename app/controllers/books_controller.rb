class BooksController < ApplicationController
  def index
    activity = Activity.find(params[:activity_id])
    genre = Genre.find(params[:genre_id])
    @books = Book.includes(:activities, :genres).where(activities: {id: activity.id}, genres: {id: genre.id})
  end

  def show
    @book = Book.find(params[:id])
    @recommendations = @book.recommendations
  end
end