class ShopsController < ApplicationController
  before_action :set_shop

  def new
    @shop = Shop.new
    authorize @shop
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user = current_user
    authorize @shop
    if @shop.save
      redirect_to shop_path(@shop)
    else
      render :new
    end
  end

  def show

  end

  private

  def shop_params
    params.require(:shop).permit(:name, :address)
  end

  def set_shop
    @shop = Shop.find(params[:id])
    authorize @shop
  end
end
