class UsersController < ApplicationController
  def index
    @users = User.all
    @tweets = Tweet.all.reverse_order
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
