class GroupsController < ApplicationController
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
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if current_user.groups.ids.include?(@group.id)
      @group.update(group_params)
    end
    if @group.save
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


end
