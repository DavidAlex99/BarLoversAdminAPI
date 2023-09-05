class EventController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.find_by(id: params[:id])
    render json: @event
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  def update
    @event = Event.find_by(id: params[:id])
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    head :no_content
  end

  def event_params
    params.require(:event).permit(:nameEvent, :descEvent, :hostEvent, :fechaEvent, :horaEvent, :url)
  end
end
