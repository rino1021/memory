class GroupsController < ApplicationController
 def index
   @photo = Photo.new
   @groups = Group.all
end

def show
  @photo = photo.new
  @groups = Group.all
end

def new
  @group = Group.new(group_params)
  @group.owner_id = current_user.id
  if @group.save
    redirect_to groups_path
  else
    render 'new'
  end 
  
def edit
end

def update
  if @group.update(group_params)
    redirect_to groups_path
  else
    render "edit"
  end
end

private

def group_params
  params.require(:group).permit(:name, :introduction, :image)
end

def ensure_correct_user
  @group = Group.find(params[:id])
  unless @group.owner_id == current_user.id
    redirect_to groups_path
  end  
end
end