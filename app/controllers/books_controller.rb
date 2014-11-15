class BooksController < ApplicationController
  def index
    activity = Activity.find(params[:activity_id])
    genre = Genre.find(params[:genre_id])
    @books = Book.includes(:activities, :genres).where(activities: {id: activity.id}, genres: {id: genre.id})
  end

  def show
    @book = Book.find(params[:id])
    @activities = Activity.all
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path, notice: 'Book Deleted'
  end
end