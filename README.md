# let-start-now

# アプリの概要

目標を宣言して投稿します。<br>
投稿した内容は全ユーザーに公開されます。<br>
応援したいユーザーの投稿にコメントを残すことやお気に入り投稿に指定することができます。
<br>
また個人で目標を管理することもできます。<br>
達成度を自己評価できる機能も備わっているので、<br>
目標をどの程度達成できたかを記録することができます。<br>
このアプリは、目標を宣言して全体に公開し、<br>
達成度を自己管理することでユーザーの目標達成をサポートします。

# スクリーン紹介

## top ページ

<img width="1399" alt="スクリーンショット 2021-03-24 20 29 33" src="https://user-images.githubusercontent.com/71679288/112304337-b7413900-8ce0-11eb-8a8e-63a4fbe7a8ff.png">

## signup ページ

<img width="1024" alt="スクリーンショット 2021-03-24 20 29 54" src="https://user-images.githubusercontent.com/71679288/112304942-71d13b80-8ce1-11eb-8179-25a2c6cc2325.png">

## index ページ

<img width="1419" alt="スクリーンショット 2021-03-24 20 33 33" src="https://user-images.githubusercontent.com/71679288/112305044-94635480-8ce1-11eb-9f1b-274ea934107c.png">

## note ページ

<img width="1291" alt="スクリーンショット 2021-03-24 20 34 27" src="https://user-images.githubusercontent.com/71679288/112305191-beb51200-8ce1-11eb-8bcf-fc96e6dc9282.png">

## acount ページ

<img width="699" alt="スクリーンショット 2021-03-21 22 01 03" src="https://user-images.githubusercontent.com/71679288/112305307-e0ae9480-8ce1-11eb-81cd-6ad84d2f9012.png">

# 使い方・機能

## 目標宣言・投稿機能

新規登録・ログイン後、menu リストの**投稿を作成する**から投稿入力します。<br>
投稿したい内容を入力後、**投稿する**をクリックすると、<br>
index ページに内容が表示されます。

## 詳細表示・コメント機能・お気に入り機能

投稿されている画像や文字をクリックすると、<br>
詳細ページに遷移します。<br>
ページ内ではコメントを残すことができます。<br>
また応援したいユーザーの投稿をお気に入りに指定することができます。

## 目標管理・達成度表示

個人のワークスペースとして note ページを作成しています。<br>
目標の達成度を記録することや進行中のタスクを管理することもできます。<br>
また、if-then ルールを入力することによって、<br>
より高い確率で習慣を変えるアプローチも実践できます。

# 環境

Ruby '2.6.5'
Rails '6.0.0'

## URL

Heroku:URL https://lets-start-now.herokuapp.com/  
AWS:URL http://18.180.144.79/

## テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nick_name          | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| profile            | string | null: false               |

## Association

has_many :objective
has_many :likes
has_many :aggregates
has_many :comments
has_many :relationships
has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
has_many :followers, through: :reverse_of_relationships, source: :user
mount_uploader :image, ImageUploader

## relationship テーブル

| Column    | Type      | Options                          |
| --------- | --------- | -------------------------------- |
| user_id   | reference | foreign_key: true                |
| follow_id | reference | foreign_key: { to_table: :users} |

## Association

belongs_to :users
belongs_to :follow, class_name: 'User'

## objective テーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| user_name   | string     | null: false                   |
| one_day     | string     | null: false                   |
| action_plan | string     | null: false                   |
| hobit_id    | integer    | null: false                   |
| category_id | integer    | null: false                   |
| hobituation | string     |                               |
| merit       | string     |                               |
| demerit     | string     |                               |
| user        | references | null: false, foreign_key:true |

## Associationbe

belongs_to :user
has_many :likes
has_many :comments

## like テーブル

| Column       | Type    | Options           |
| ------------ | ------- | ----------------- |
| user_id      | integer | foreign_key: true |
| objective_id | integer | foreign_key: true |

## Association

belongs_to :user
belongs_to :objective

## Comment テーブル

| Column       | Type    | Options           |
| ------------ | ------- | ----------------- |
| user_id      | integer | foreign_key: true |
| objective_id | integer | foreign_key: true |
| text         | string  | null: false       |

## Association

belongs_to :user
belongs_to :objective

## Aggregates

| Column          | Type     | Options                        |
| --------------- | -------- | ------------------------------ |
| result_comment  | string   | null: false                    |
| ability_id      | integer  | null: false                    |
| period_id       | datetime | null: false                    |
| self_compliment | string   |                                |
| ability_point   | integer  |                                |
| user_id         | integer  | null: false, foreign_key: true |

belongs_to :user
