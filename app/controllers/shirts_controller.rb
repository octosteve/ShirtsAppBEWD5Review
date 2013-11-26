class ShirtsController < ApplicationController
  before_action :find_shirt, only: [:edit, :update, :show]

  def index
    @shirts = Shirt.all
  end

  def new
    @shirt = Shirt.new
  end

  def create
    shirt = Shirt.create safe_shirt
    redirect_to shirt
  end

  def show
  end

  def edit
  end

  def update
    @shirt.update safe_shirt
    redirect_to @shirt
  end

  private

  def find_shirt
    @shirt = Shirt.find params[:id]
  end

  def safe_shirt
    params.require(:shirt).permit(:name, :description, :image)
  end
end
