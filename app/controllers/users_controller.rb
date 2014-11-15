class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to_root_path, notice: 'User Deleted'
  end

end