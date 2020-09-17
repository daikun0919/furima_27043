FactoryBot.define do

  factory :user_transaction do
    postal_code         {"00000000"}
    area_id             {"2"}
    municipality        {"abc"}
    block_number        {"00000000"}
    phone_number        {"00000000"}
    token               {"00000000"}
  end

  association :order

end