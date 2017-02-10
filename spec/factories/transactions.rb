FactoryGirl.define do
  factory :transaction do
    trx_id "MyString"
    address_ship "MyString"
    date_order "2017-02-06"
    seller_name "MyString"

    trait :jne_transaction do
      delivery_service "JNE"
    end
    trait :pos_transaction do
      delivery_service "POS"
    end
    trait :rex_transaction do
      delivery_service "REX"
    end
  end

end
