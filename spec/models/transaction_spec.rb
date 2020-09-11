require 'rails_helper'

describe Transaction do
  describe '#create' do

    it "値段がないとアイテムは保存できない" do
      @transaction.item_price = ""
      @transaction.valid?
      expect(@transaction.errors.full_messages).to include("Item_price can't be blank")
    end  

    it "郵便番号がないとトランスアクションは保存できない" do
      @transaction.postal_code = ""
      @transaction.valid?
      expect(@transaction.errors.full_messages).to include("Postal_code can't be blank")
    end 

    it "都道府県の入力がないとトランスアクションは保存できない" do
      @transaction.area_id = ""
      @transaction.valid?
      expect(@transaction.errors.full_messages).to include("Area_id can't be blank")
    end  

    it "市区町村の入力がないとトランスアクションは保存できない" do
      @transaction.municipality = ""
      @transaction.valid?
      expect(@transaction.errors.full_messages).to include("Municipality can't be blank")
    end  

    it "番地の入力がないとトランスアクションは保存できない" do
      @transaction.block_number = ""
      @transaction.valid?
      expect(@transaction.errors.full_messages).to include("Block_number can't be blank")
    end  
    
    it "建物名の入力がないとトランスアクションは保存できない" do
      @transaction.apartment_name = ""
      @transaction.valid?
      expect(@transaction.errors.full_messages).to include("Apartment_name can't be blank")
    end  

    it "電話番号の入力がないとトランスアクションは保存できない" do
      @transaction.phone_number = ""
      @transaction.valid?
      expect(@transaction.errors.full_messages).to include("Phone_number can't be blank")
    end  