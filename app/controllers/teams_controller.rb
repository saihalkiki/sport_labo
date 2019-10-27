class TeamsController < ApplicationController
  
  before_action :authenticate_user!,only: [ :edit, :update, :destroy]
  
  def index
    @teams = Team.all
  end
  
  def show
    @team = Team.find(params[:id])
  end
  
  def new
    @team = Team.new
  end
  
  def create
    @team = current_user.teams.new(team_params)
    if @team.save
      flash[:success] = "新しいチームを作成しました"
      redirect_to @team
    else
      # redirect_to new_team_path エラーが残らない！
      render 'teams/new' #エラー更新後、URLが「…/blogs」に変更されてしまう！
    end
  end

  def edit
    @team = Team.find(params[:id])
  end
  
  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(team_params)
      flash[:success] = "チームの内容を編集しました"
      redirect_to @team
    else
      render 'edit'
    end
  end
  
  def destroy
    Team.find(params[:id]).destroy
    flash[:success] = "チームを削除しました"
    redirect_to teams_url
  end
  
  private
  
    def team_params
      params.require(:team).permit(:name, :context, :user_id, :sport_id, :prefecture_id )
    end

end
