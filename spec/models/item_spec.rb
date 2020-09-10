rrequire 'rails_helper'

describe Item do
  describe '#create' do

    it "is invalid without a item_price" do
      item = build(:item, item_price: "")
      item.valid?
      expect(item.errors[:item_price]).to include("can't be blank")
    end

    it "is invalid without an image" do
      item = build(:item, image: "")
      item.valid?
      expect(item.errors[:image]).to include("can't be blank")
    end

  end
end