class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy
    @event=Event.find(params[:id])
    @event.destroy
    redirect_to me_path(@event.user), status: :see_other
  end

end
