class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

def show
  @group = Group.find(params[:id])
  if !@group.users.include?(current_user)
    @group.users << current_user
  end
end


def create
  @group = Group.new(group_params)
  if @group.save
    redirect_to groups_path, notice: 'グループを作成しました'
  else
    render :new
  end
end

def update
  
  if @group.update
    redirect_to groups_path
  end
end

private
def group_params
  params.require(:group).permit(:user_name,:category_id,:name, :comment, user_ids: [])
end
end