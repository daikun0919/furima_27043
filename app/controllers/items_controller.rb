class ItemsController < ApplicationController
  before_action:authenticate_user!

  def index
    @articles = Article.order("created_at DESC")
  end
  
  def new
    @item = Item.new
    # @item << current_user
    @article = Article.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: '商品を投稿しました'
    else
      render :new
    end

    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path, notice: '商品を変更しました'
    else
      render :edit
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, user_ids: [])
  end

  def article_params
    params.require(:article).permit(:genre_id)
  end
  
end
