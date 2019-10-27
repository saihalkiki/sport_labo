class UsersController < ApplicationController
  before_action :logged_in_user,  only: [:index, :show, :following, :followers]

  def index
  end

  def show
    @user = User.find(params[:id])
    @microposts = Micropost.all
  end

  def following
    @title = "フォロー"
    @user = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end
  
  def followers
    @title = "フォロワー"
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end
  

  
end
