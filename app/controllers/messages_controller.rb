class MessagesController < ApplicationController
  before_action :signed_in?, only: :create

  def create 
    if Entry.where(:user_id => current_user.id, :room_id => params[:message][:room_id]).present?
      @message = Message.create(params.require(:message).permit(:user_id, :content, :room_id).merge(user_id: current_user.id))
      redirect_to room_path(@message.room_id)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private 
    def message_params
      params.require(:message).permit(:user_id, :content, :room_id).merge(user_id: current_user.id)
    end
end
