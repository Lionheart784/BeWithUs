class UsersController < ApplicationController
  def me
  @user=User.find(params[:id])
  end
end
