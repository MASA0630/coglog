class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @courses = @user.courses.page(params[:page]).per(6).order('created_at DESC')
    end

end
