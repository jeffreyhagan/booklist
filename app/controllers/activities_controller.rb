class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to @activity
    else
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    #redirect_to_root_path, notice: 'Activity Deleted'
  end
end