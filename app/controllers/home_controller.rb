class HomeController < ApplicationController
  def index
    @group_list = current_user.present? ? current_user.groups : []
    @entry_list = Entry.order('id desc').limit(10)
  end

  def settings
    @user = User.find(current_user.id)
  end

  def entries
    @feed_list = Feed.order('updated_at desc')
    @entry_list = Entry.page(params[:page]).per(30).order('id desc')
  end
end
