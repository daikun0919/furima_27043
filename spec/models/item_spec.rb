require 'rails_helper'
describe Item do
  describe '#create' do
    it "is invalid without a item_name" do
      item = Item.new(item_name: "", genre_id: "3", status_id: "2", delivery_id: "1", area_id: "1", day_id: "3", image: "×××")
      item.valid?
      expect(item.errors[:item_name]).to include("can't be blank")
    end
  end
end