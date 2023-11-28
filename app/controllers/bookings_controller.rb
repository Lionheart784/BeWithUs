class BookingsController < ApplicationController

  def create

  end

  def update
  @booking=Booking.find(params[:id])
  @booking.update(params[:booking])
  redirect_to me_path(@booking.user)
  end

end
