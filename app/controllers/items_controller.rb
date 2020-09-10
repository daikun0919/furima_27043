class ItemsController < ApplicationController
  before_action:authenticate_user!, only: [:new, :edit, :update, :destroy]

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

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to root_path
  end

  def destroy
    @item = Item.find_by(id: params[:id])
      @item.destroy
      redirect_to :root
  end

  private
  def item_params
    params.require(:item).permit(:image, :item_name, :item_explain, :genre_id, :status_id, :delivery_id, :area_id, :day_id, :item_price ).merge(user_id: current_user.id)
  end
  
end
