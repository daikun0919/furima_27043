class TransactionsController < ApplicationController
  before_action:authenticate_user!, only: [:index, :create]



  def index
    @item = Item.find(params[:item_id])
    
  end

  def create
    @transaction = Order.new(order_params)
    if @transaction.valid?
      pay_item
      @transaction.save
      return redirect_to root_path
    else
      @item = Item.find(params[:item_id])
      render 'index'
    end
  end

  private

  def order_params
    params.permit(:price, :token)
  end

  def pay_item
    Payjp.api_key = "sk_test_XXXXXXXX"  # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: transaction_params[:price],  # 商品の値段
      card: transaction_params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類(日本円)
    )
  end
 
end
