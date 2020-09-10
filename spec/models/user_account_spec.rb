require 'rails_helper'

describe User_account do
  describe '#create' do

    it "is invalid without a nickname" do
      user_account = build(:user_account, nickname: "")
      user_account.valid?
      expect(user_account.errors[:nickname]).to include("can't be blank")
    end

    it "is invalid without an email" do
      user_account = build(:user_account, email: "")
      user_account.valid?
      expect(user_account.errors[:email]).to include("can't be blank")
    end

  end
end