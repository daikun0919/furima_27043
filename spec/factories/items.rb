FactoryBot.define do

  factory :item do
    
    item_name          {"abc"}
    item_explain       {"abc"}
    genre_id           {"2"}
    status_id          {"2"}
    delivery_id        {"2"}
    area_id            {"2"}
    day_id             {"2"}
    image              {"abc"}
    item_price         {"000000"}
  end

  association :user
end