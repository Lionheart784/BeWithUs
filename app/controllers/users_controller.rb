class UsersController < ApplicationController
  def me
    # @user = User.find(params[:id])
    # current_user
    @user = current_user
  end


end
