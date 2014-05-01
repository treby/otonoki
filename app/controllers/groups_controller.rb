class GroupsController < ApplicationController
  before_action :login_required

  def index
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def members
    @group = Group.find(params[:group_id])
    until @group.users.include?(current_user)
      redirect_to root_path, flash: {error: 'グループに属していないようです。'} and return
    end
  end
end
