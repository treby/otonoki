# encoding: utf-8
class UsersController < ApplicationController
  def update
    current_user.name = params[:user][:name]
    current_user.profile_url = params[:user][:profile_url]
    current_user.external_url = params[:user][:external_url]

    if current_user.save
      redirect_to root_path, flash: {notice: '正常に保存されました'}
    else
      redirect_to settings_path, flash: {error: '保存できませんでした'}
    end
  end
end
