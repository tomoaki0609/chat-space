class MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @groups = current_user.groups
  end

  def create
    Message.cteate(user_id: "current_user", group_id: "params[:group_id]",body: "params[:body]")
  end

end
