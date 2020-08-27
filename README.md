## furima_27043 DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
### Association
- has_many :goods  through:  :order_goods
has_many :order_goods

## accountテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

## goodsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|user_id|integer|null: false, foreign_key: true|
|order_goods_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

## order_goodsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|goods_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :goods
- belongs_to :user