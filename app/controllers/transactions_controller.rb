class TransactionsController < ApplicationController
  before_action:authenticate_user!, only: [:index, :create]



  def index
    @item = Item.find(params[:item_id])
  end


  def create
    @transaction = UserTransaction.new(transaction_params)
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

  def transaction_params
    params.permit(:postal_code, :area_id, :municipality, :block_number, :apartment_name, :phone_number, :item_id, :token).merge(user_id: current_user.id)
  end

  def pay_item
    
    @item = Item.find(params[:item_id])
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @item.item_price, 
      card: transaction_params[:token],    
      currency:'jpy'                
    )
  end
 
end
