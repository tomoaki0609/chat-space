

# DB設計

## grope_users table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

- belongs_to :groups
- belongs_to :users

## gropes table
|Column|Type|Options|
|------|----|-------|
|name|text|null: false, unique:true|

- has_many :users, through: :grope_users
- has_many :messages

## users table
|Column|Type|Options|
|------|----|-------|
|grope_id|integer|null: false, unique:true|
|nickname|text|null: false, unique:true|
|email|text|null: false, unique:true|
|password|text|null: false|

- has_many :groups, through: :group_users
- has_many :messages

## messages table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, unique:true|
|group_id|integer|null: false, unique:true|
|body|text|null: false|

- belongs_to :groups
- belongs_to :users
