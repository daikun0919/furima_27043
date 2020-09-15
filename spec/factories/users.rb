FactoryBot.define do

  factory :user do
    email                 {"kkk@gmail.com"}
    first_name            {"abe"}
    last_name             {"abe"}
    first_name_kana       {"abe"}
    last_name_kana        {"abe"}
    nickname              {"abe"}
    birthday              {"00/00"}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end


  association :order
end