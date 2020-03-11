class UrlsController < ApplicationController
    before_action :set_user, only: [:users_imaeg_and_video_url, :add_mypage_content_create]
    
    # 画像、動画を公開、非公開が選べる
    def users_imaeg_and_video_url
      url_params.each do |id, item|
        url_models_id = Url.find(id)
        url_models_id.update(item)
        
        Url.where(select_content_delete: true).destroy_all
          
      end 
      flash[:success] = "選択されたコンテンツを更新しました。"
      redirect_to edit_mypage_url
    end
    
    def add_mypage_content_create
      if params[:url]
        if params[:url][:mypage_image] && params[:url][:mypage_movie]
          flash[:danger] = "画像か動画、どちらか一つを選択して下さい。"
          redirect_to edit_mypage_url(@user)
        else
          @mypage_content = @user.urls.new(mypage_image: mypage_params[:mypage_image], mypage_movie: mypage_params[:mypage_movie])
          if @mypage_content.save
            flash[:success] = "コンテンツを追加しました。"
            redirect_to edit_mypage_url(@user)
          else
            flash[:danger] = "作成に失敗しました。"
            redirect_to edit_mypage_url(@user)
          end
        end
      else
        flash[:danger] = "画像か動画ファイルを選択して下さい。"
        redirect_to edit_mypage_url(@user)
      end
    end
    
    private
    
    def set_user
      @user = User.find(params[:user_id])
    end
    
    def url_params
      params.require(:user).permit(urls: [:public_url, :select_content_delete])[:urls]
    end
    
    def mypage_params
       params.require(:url).permit(:mypage_image, :mypage_movie)
    end
    
end
