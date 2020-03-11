class MessagesController < ApplicationController
    
    def create
        if Entry.where(:user_id => current_user.id, :room_id => params[:message][:room_id]).present?
          @message = Message.create(params.require(:message).permit(:user_id, :content, :already_read, :room_id).merge(:user_id => current_user.id))

          redirect_to "/rooms/#{@message.room_id}"
        else
          redirect_back(fallback_location: root_path)
        end
    end
    
    def destroy
      @message = FavoriteFolder(params[:message_id])
      @message.destroy
      flash[:info] = "メッセージを削除しました。"
      redirect_to room_url
    end
    
end
