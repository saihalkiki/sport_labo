class PagesController < ApplicationController


  def index
    @sports = Sport.all
    @microposts = Micropost.all
    
    if params[:sort] == "1"
      @microposts = @microposts.sorted
    elsif params[:sort] == "2"
      @microposts = @microposts.sorted2
    end
    
  end
  
end
