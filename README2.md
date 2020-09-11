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
|birthday|string|null: false|
|password|string|null: false|
|password_confirmation|string|null: false|
### Association
- has_many :items
- belongs_to :order


## transactionテーブル
|Column|Type|Options|
|------|----|-------|
|post_code|string|null: false|
|area_id|string|null: false|
|municipality|string|null: false|
|block_number|string|null: false|
|apartment_name|string|null: false|
|phone_number|string|null: false|
### Association
- belongs_to :user



## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|genre_id|integer|null: false, foreign_key: true|
|status_id|integer|null: false, foreign_key: true|
|delivery_id|integer|null: false, foreign_key: true|
|area_id|integer|null: false, foreign_key: true|
|day_id|integer|null: false, foreign_key: true|
|item_name|string|null: false|
|image|string|null: false|

### Association
- belongs_to :user
- belongs_to :order



## orderテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :item
- belongs_to :user
