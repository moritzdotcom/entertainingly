class UserFavouritesController < ApplicationController
  def create
    @user_favourite = UserFavourite.new
    @event = Event.find(params[:event_id])
    @user_favourite.event = @event
    @user_favourite.user = current_user
    @user_favourite.save
  end

  def destroy
    user_favourite = UserFavourite.find(params[:id])
    @event = Event.find(params[:event_id])
    user_favourite.delete
  end
end
