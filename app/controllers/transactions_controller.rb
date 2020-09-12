class TransactionsController < ApplicationController
  before_action:authenticate_user!, only: [:index, :create]



  def index
    @item = Item.find(params[:item_id])
    
  end


  def create
    @transaction = UserTransaction.new(transaction_params)
    @item = Item.find(params[:item_id])
    if @transaction.valid?
      pay_item
      @transaction.save
      return redirect_to root_path
    else
      @item = Item.find(params[:item_id])
      render 'index'
    end

  end

  def edit
    if item.transaction_status_id.present?
      transaction_status_id_3
    else
      transaction_status_id_2
    end

  end

  private

  def transaction_params
    params.permit(:postal_code, :area_id, :municipality, :block_number, :apartment_name, :phone_number, :item_id, :token)
  end

  def pay_item
    
    @item = Item.find(params[:item_id])
    Payjp.api_key = "sk_test_e775868e20f3c5484dcff14c"  # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: @item.item_price, 
      card: transaction_params[:token],    
      currency:'jpy'                
    )
  end
 
end
