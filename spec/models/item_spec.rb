require 'rails_helper'

describe Item do
  describe '#create' do

    it "is invalid without a item_price" do
      item = build(:item, item_price: "")
      item.valid?
      expect(item.errors[:image_price]).to include("can't be blank")
    end

    it "is invalid without a image" do
      item = build(:item, image: "")
      item.valid?
      expect(item.errors[:image]).to include("can't be blank")
    end

    it "is invalid without a item_name" do
      item = build(:item, item_name: "")
      item.valid?
      expect(item.errors[:item_name]).to include("can't be blank")
    end

    it "is invalid without a status_id" do
      item = build(:user, status_id: "")
      item.valid?
      expect(item.errors[:status_id]).to include("can't be blank")
    end

    it "is invalid without a delivery_id" do
      item = build(:item, delivery_id: "")
      item.valid?
      expect(item.errors[:delivery_id]).to include("can't be blank")
    end

    it "is invalid without an area_id" do
      item = build(:item, area_id: "")
      item.valid?
      expect(item.errors[:area_id]).to include("can't be blank")
    end

    it "is invalid without a day_id" do
      item = build(:item, day_id: "")
      item.valid?
      expect(item.errors[:day_id]).to include("can't be blank")
    end

    it "is invalid without an item_explain" do
      item = build(:item, item_explain: "")
      item.valid?
      expect(item.errors[:item_exolain]).to include("can't be blank")
    end

    it "is invalid without a genre_id" do
      item = build(:item, genre_id: "")
      item.valid?
      expect(item.errors[:genre_id]).to include("can't be blank")
    end
  end
  
  it "is valid with an item_price" do
    item = build(:item)
    expect(item).to be_valid
  end

  it "is valid with an image" do
    item = build(:item)
    expect(item).to be_valid
  end

  it "is valid with an item_name" do
    item = build(:item)
    expect(item).to be_valid
  end

  it "is valid with a genre_id" do
    item = build(:item)
    expect(item).to be_valid
  end

  it "is valid with a status_id" do
    item = build(:item)
    expect(item).to be_valid
  end

  it "is valid with a delivery_id" do
    item = build(:item)
    expect(item).to be_valid
  end

  it "is valid with an area_id" do
    item = build(:item)
    expect(item).to be_valid
  end

  it "is valid with a day_id" do
    item = build(:item)
    expect(item).to be_valid
  end

  it "is valid with an item_explain" do
    item = build(:item)
    expect(item).to be_valid
  end
end