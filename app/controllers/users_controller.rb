# encoding: utf-8
class UsersController < ApplicationController
  def update
    current_user.name = params[:user][:name]

    if current_user.save
      redirect_to root_path, flash: {notice: '正常に保存されました'}
    else
      redirect_to settings_path
    end
  end
end
