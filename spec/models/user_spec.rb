require 'rails_helper'

describe User do
  describe '#create' do

    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "is invalid without an email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")

    end

    it "is invalid without a first_name" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end

    it "is invalid without a last_name" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:last_name]).to include("can't be blank")
    end

    it "is invalid without a first_name_kana" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end

    zit "is invalid without a last_name_kana" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end

    it "is invalid without a birthday" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:birthday]).to include("can't be blank")
    end

    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid without an password_confirmation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("can't be blank")
    end

  end
end

it "is valid with a nickname, email, first_name, last_name, first_name_kana, last_name_kana, birthday, password, password_confirmation" do
  user = build(:user)
  expect(user).to be_valid
end

