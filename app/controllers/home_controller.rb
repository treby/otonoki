class HomeController < ApplicationController
  def index
    @group_list = @current_user.groups if @current_user.present?
  end
end
