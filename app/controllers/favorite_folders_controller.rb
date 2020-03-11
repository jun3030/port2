class FavoriteFoldersController < ApplicationController
    def create
      unless current_user.favorite_folders.where(favorite_user: params[:id]).present?
        current_user.favorite_folders.create(favorite_params)
        flash[:info] = "お気に入りに登録しました。"
        redirect_to edit_mypage_url
      else
        flash[:info] = "既に登録済みです。"
        redirect_to edit_mypage_url(current_user)
      end
    end
    
    
    def destroy
     
        favorite_user = current_user.favorite_folders.find_by(favorite_user: params[:id])
        favorite_user.destroy
        flash[:info] = "お気に入りを解除しました。"
        redirect_to edit_mypage_url(current_user)
    
    end
    
    
    private
    
    def favorite_params
      params.require(:favorite_folder).permit(:favorite_user)
    end  
end

