class RecommendationsController < ApplicationController
def index
    @recommendation = Recommendation.all
  end

  def show
    @recommendation = Recommendation.find(params[:id])
  end

  def new
    @recommendation = Recommendation.new
  end

  def edit
    @recommendation = Recommendation.find(params[:id])
  end

  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy
    redirect_to_root_path, notice: 'Recommendation Deleted'
  end

end
