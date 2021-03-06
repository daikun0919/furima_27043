class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update]

  def index
    @items = Item.all.order("created_at")
  end
  
  def new
    @item = Item.new

  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @item.update(item_params)
    if @item.attributes
      redirect_to root_path
    else
      redirect_to edit_item
    end
  end

  def destroy
    @item = Item.find(params[:id])
      @item.destroy
      redirect_to :root
  end

  private
  def item_params
    params.require(:item).permit(:image, :item_name, :item_explain, :genre_id, :status_id, :delivery_id, :area_id, :day_id, :item_price ).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
  
end
