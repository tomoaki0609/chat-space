class MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @groups = current_user.groups
    @message = Message.new
    @messages = Message.all
  end

  def create
    Message.create(message_params)
    redirect_to group_messages_path
  end

  private
  def message_params
    params.require(:message).permit(:body, :user_id).merge(group_id: params[:group_id], user_id: current_user.id)
  end

end
