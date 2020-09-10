## furima_27043 DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|birthday|string|null: false|
### Association
- has_many :goods  through :items_user
has_many :items_user

## user_accountテーブル
|Column|Type|Options|
|------|----|-------|
|card_name|string|null: false|
|expiration_date|string|null: false|
|security_cord|string|null: false|
|card_name|string|null: false|
### Association
- belongs_to :user

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|string|
|user_id|integer|null: false, foreign_key: true|
|items_user|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

## orderテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|goods_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :goods
- belongs_to :user

