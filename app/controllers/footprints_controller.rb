class FootprintsController < ApplicationController
    
  def footprint_params
    params.require(:footprint).permit(:visiter_id, :visited_id)
  end
    
  def create_footprint
    @user = User.find(params[:id])
    unless current_user == @user
      @footprint = current_user.footprints.new(user_id: current_user.id, visiter_id: current_user.id, visited_id: @user.id)
      @footprint.save
      flash[:info] = "作成"
    end
  end
  
end

