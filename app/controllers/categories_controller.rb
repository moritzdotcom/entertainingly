class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.order(:name)
  end

  def show
    @category.count += 2
    @category.save
    @events = @category.events.order(count: :desc)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end
