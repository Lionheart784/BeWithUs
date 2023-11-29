class BookingsController < ApplicationController

  def create

  end

  def update
  # params[:booking]
    @booking = Booking.find(params[:id])
    @booking.update(confirmed: !@booking.confirmed)
    redirect_to me_path(@booking.event.user), status: :see_other
  end

end
