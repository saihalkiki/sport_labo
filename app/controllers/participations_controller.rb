class ParticipationsController < ApplicationController

  def create
    @micropost = Micropost.find(params[:micropost_id])
    @participation = current_user.participations.build(micropost_id: params[:micropost_id])
    @participation.save
    flash.now[:notice] = '参加申し込みをしました'
    redirect_to @micropost
    # respond_to do |format|
    #   format.html { redirect_to @micropost }
    #   format.js
    # end
  end
  
  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    @participation = Participation.find_by(micropost_id: params[:micropost_id], user_id: current_user.id)
    @participation.destroy
    flash.now[:notice] = 'キャンセルしました'
    redirect_to @micropost
    # respond_to do |format|
    #   format.html { redirect_to @micropost }
    #   format.js
    # end
  end
  
  
  private
  
    def participation_params
      params.require(:participation).permit(:micropost_id)
    end
  
end
