class TransactionsController < ApplicationController
  before_action:authenticate_user!, only: [:index, :create]



  def index
    @item = Item.find(params[:item_id])
    
  end


  def create
    @transaction = UserTransaction.new(transaction_params)
    #@transaction = Order.new(order_params)

    if @transaction.valid?
      
      pay_item
      @transaction.save
      return redirect_to root_path
    else
      @item = Item.find(params[:item_id])
      render 'index'
    end

    # @donation = UserDonation.new(donation_params)   #「UserDonation」に編集
    # @donation.save
  end

  private

  def transaction_params
    params.permit(:postal_code, :area_id, :municipality, :block_number, :apartment_name, :phone_number, :item_id, :token)
  end

  def pay_item
    Payjp.api_key = "sk_test_e775868e20f3c5484dcff14c"  # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: transaction_params[:price],  # 商品の値段
      card: transaction_params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類(日本円)
    )
  end
 
end
