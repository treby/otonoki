class HomeController < ApplicationController
  def index
    @group_list = current_user.present? ? current_user.groups : []
  end

  def settings
  end
end
