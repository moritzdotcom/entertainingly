class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :check_admin, only: [:new, :create, :edit, :update, :destroy]

  def index
    @categories = Category.order(:name)
  end

  def show
    @category.count += 2
    @category.save
    @events = @category.events.order(count: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save && @category.photo.attached?
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @category.update(category_params)
    redirect_to category_path(@category)
  end

  def destroy
    @category.photo.purge
    @category.destroy
    redirect_to categories_path
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :photo)
  end

  def check_admin
    if user_signed_in?
      redirect_to root_path unless current_user.admin
    else
      redirect_to root_path
    end
  end
end
