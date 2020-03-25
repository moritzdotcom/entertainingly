class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  def show
    category = @event.category
    category.count += 1
    category.save
    @event.count += 1
    @event.save
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
