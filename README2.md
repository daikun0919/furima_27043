## furima_27043 DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|nickname|string|null: false|
|birthday|datetime|null: false|
|password|string|null: false|
### Association
- has_many :items
- has_many :orders


## transactionテーブル
|Column|Type|Options|
|------|----|-------|
|post_code|string|null: false|
|area_id|integer|null: false|
|municipality|string|null: false|
|block_number|string|null: false|
|apartment_name|string|
|phone_number|string|null: false|
### Association
- belongs_to :order



## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|genre_id|integer|null: false|
|status_id|integer|null: false|
|delivery_id|integer|null: false|
|area_id|integer|null: false|
|day_id|integer|null: false|
|item_name|string|null: false|
|item_explain|text|null: false|

### Association
- belongs_to :user
- has_one :order



## orderテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :order
- belongs_to :user
- has_one :transaction

