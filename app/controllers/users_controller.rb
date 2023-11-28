class UsersController < ApplicationController
  def me
  @user=User.find(params[:id])
  @booking_send=@user.bookings
  # this is an array
  # @booking_receive
  # @user.events do |event|
  #   event.bookings do |booking|
  #     @booking_receive=booking
  #   end
  end
end
