class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  #def destroy
    #@genre = Genre.find(params[:id])
    #@genre.destroy
   # redirect_to_root_path, notice: 'Genre Deleted'
  #end
end