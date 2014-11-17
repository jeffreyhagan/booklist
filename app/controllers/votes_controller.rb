class VotesController < ApplicationController

  before_action :authenticate_user!

  def upvote
    activity = Activity.find(params[:activity_id])
    book = Book.find(params[:book_id])
    recommendation = Recommendation.find_by(activity: activity, book: book)
    recommendation.vote_by voter: current_user
    redirect_to book_path(params[:book_id])
  end

  def downvote
    activity = Activity.find(params[:activity_id])
    book = Book.find(params[:book_id])
    recommendation = Recommendation.find_by(activity: activity, book: book)
    recommendation.vote_by voter: current_user, vote: 'bad'
    redirect_to book_path(params[:book_id])
  end
end