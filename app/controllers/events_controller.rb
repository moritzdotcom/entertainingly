class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  def show
    category = @event.category
    category.count += 1
    category.save
    @event.count += 1
    @event.save
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
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
