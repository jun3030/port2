class RoomsController < ApplicationController
    
    before_action :already_read, only: :show
    
    def create
      @room = Room.create
      @entry1 = Entry.create(:room_id => @room.id, :user_id => current_user.id)
      @entry2 = Entry.create(entry_params)
      redirect_to "/rooms/#{@room.id}"
    end
    
    def show
      @room = Room.find(params[:id])
      if Entry.where(user_id: current_user.id, room_id: @room.id).present?
        @messages = @room.messages
        @message = Message.new
        @entries = @room.entries
      else
        redirect_back(fallback_location: root_path)
      end
    end
    
    def destroy
    end
    
    private
    
    def entry_params
      params.require(:entry).permit(:user_id, :room_id).merge(:room_id => @room.id)
    end
    
    def already_read
     @room = Room.find(params[:id])
     if current_user && @room.messages.where.not(user_id: current_user.id).where(already_read: "未読").present?
       @room.messages.update(already_read: "既読")
     end
    end
end
