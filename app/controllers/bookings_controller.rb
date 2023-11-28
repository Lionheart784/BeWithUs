class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.event = Event.find(params[:event_id])
    if @booking.save
      redirect_to me_path, notice: 'Booking succeed!'
    else
      render "events/show", status: :unprocessable_entity, notice: 'Booking failed!'
    end
  end

  def update

  end
end
