class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @events = Event.where(canceled: false)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    @event=Event.find(params[:id])
    @event.destroy
    redirect_to me_path, status: :see_other
  end

  def cancel
    @event = Event.find(params[:id])
    @event.update(canceled: !@event.canceled)
    redirect_to me_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:title, :location, :description, :start_at, :end_at, { :images => []})
  end
end
