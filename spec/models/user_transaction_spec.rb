require 'rails_helper'

describe Transaction do
  describe '#create' do

    it "is invalid without a postal_code" do
      user_transaction = build(:user_transaction, postal_code: "")
      user_transaction.valid?
      expect(user_transaction.errors[:postal_code]).to include("can't be blank")
    end
  
    it "is invalid without an area_id" do
        user_transaction = build(:user_transaction, area_id: "")
        user_transaction.valid?
        expect(user_transaction.errors[:area_id]).to include("can't be blank")
      end
  
    it "is invalid without a municipality" do
      user_transaction = build(:user_transaction, municipality: "")
      user_transaction.valid?
      expect(user_transaction.errors[:municipality]).to include("can't be blank")
    end
  
    it "is invalid without a block_number" do
      user_transaction = build(:user_transaction, block_number: "")
      user_transaction.valid?
      expect(user_transaction.errors[:block_number]).to include("can't be blank")
    end
  
    it "is invalid without a phone_number" do
      user_transaction = build(:user_transaction, area_id: "")
      user_transaction.valid?
      expect(user_transaction.errors[:phone_number]).to include("can't be blank")
    end

    it "is invalid without a token" do
      user_transaction = build(:user_transaction, token: "")
      user_transaction.valid?
      expect(user_transaction.errors[:token]).to include("can't be blank")
    end
  end
  
  it "is valid with a postal_code" do
    user_transaction = build(:user_transaction)
    expect(user_transaction).to be_valid
  end

  it "is valid with an area_id" do
    user_transaction = build(:user_transaction)
    expect(user_transaction).to be_valid
  end

  it "is valid with a municipality" do
    user_transaction = build(:user_transaction)
    expect(user_transaction).to be_valid
  end

  it "is valid with a block_number" do
    user_transaction = build(:user_transaction)
    expect(user_transaction).to be_valid
  end

  it "is valid with a phone_number" do
    user_transaction = build(:user_transaction)
    expect(user_transaction).to be_valid
  end

  it "is valid with a token" do
    user_transaction = build(:user_transaction)
    expect(user_transaction).to be_valid
  end




end