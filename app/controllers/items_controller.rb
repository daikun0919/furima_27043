class ItemsController < ApplicationController
  before_action:authenticate_user!, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new

  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      redirect_to new_item_path
    end

  end

  def edit
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path, notice: '商品を変更しました'
    else
      render :edit
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def destory
  end

  private
  def item_params
    params.require(:item).permit(:image, :item_name, :item_explain, :genre_id, :status_id, :delivery_id, :area_id, :day_id, :item_price ).merge(user_id: current_user.id)
  end
  
end
