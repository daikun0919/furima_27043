rrequire 'rails_helper'

describe Item do
  describe '#create' do

    it "値段がないとアイテムは保存できない" do
      @item.item_price = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Item_price can't be blank")
    end  

    it "画像がないとアイテムは保存できない" do
      @item.image = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end 

    it "名前がないとアイテムは保存できない" do
      @item.item_name = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Item_name can't be blank")
    end  

    it "商品の状態がないとアイテムは保存できない" do
      @item.status_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Status_id can't be blank")
    end  

    it "配送料の負担がないとアイテムは保存できない" do
      @item.delivery_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Delivery_id can't be blank")
    end  
    
    it "配送先がないとアイテムは保存できない" do
      @item.area_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Area_id can't be blank")
    end  

    it "配送日数がないとアイテムは保存できない" do
      @item.day_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Day_id can't be blank")
    end  

    it "商品の説明がないとアイテムは保存できない" do
      @item.item_explain = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Item_explain can't be blank")
    end  

    it "商品のジャンルがないとアイテムは保存できない" do
      @item.genre_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Genre_id can't be blank")
    end  

  end
end