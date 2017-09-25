class GroupsController < ApplicationController

  before_action :group_action, only: [:edit, :update]
  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: "グループを作成しました"
    else
      flash.now[:alert] = "グループ名を入力してください"
      render :new
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to root_path, notice: "グループを編集しました"
    else
      flash.now[:alert] = "グループ名を入力してください"
      render :new
    end
  end


  private
  def group_params
    params.require(:group).permit(:name, {user_ids:[]})
  end

  def group_action
    @group = Group.find(params[:id])
  end


end
