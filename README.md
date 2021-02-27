# let-start-now

# アプリの概要
目標を宣言して投稿します。
投稿した内容は全ユーザーに公開されます。
応援したいユーザーの投稿にコメントを残すことやお気に入り投稿に指定することができます。
<br>
また個人で目標を管理することもできます。
達成度を自己評価できる機能も備わっているので、<br>
目標をどの程度達成できたかを記録することができます。<br>
このアプリは、目標を宣言して全体に公開し、<br>
達成度を自己管理することでユーザーの目標達成をサポートします。

# URL https://lets-start-now.herokuapp.com/
# URL http://18.180.144.79/

# 使い方・機能
## 目標宣言・投稿機能
新規登録・ログイン後、menuリストの**投稿を作成する**から投稿入力します。
投稿したい内容を入力後、**投稿する**をクリックすると、<br>
indexページに内容が表示されます。

## 詳細表示・コメント機能・お気に入り機能
投稿されている画像や文字をクリックすると、<br>
詳細ページに遷移します。<br>
ページ内ではコメントを残すことができます。<br>
また応援したいユーザーの投稿をお気に入りに指定することができます。

## 目標管理・達成度表示
個人のワークスペースとしてnoteページを作成しています。
目標の達成度を記録することや進行中のタスクを管理することもできます。<br>
また、if-thenルールを入力することによって、<br>
より高い確率で習慣を変えるアプローチも実践できます。


# 環境
Ruby '2.6.5'
Rails '6.0.0'
Javascript
Ajax

## テーブル設計


## users テーブル


| Column              | Type   | Options                     |
| ------------------- | ------ | ----------------------------|
| nick_name           | string | null: false                 | 
| email               | string | null: false, unique: true   | 
| encrypted_password  | string | null: false                 | 
| profile             | string | null: false                 |


##  Association
has_many   :objective 
has_many   :likes
has_many   :aggregates
has_many   :comments



##  objective テーブル


| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| user_name           | string     | null: false                    | 
| one_day             | string     | null: false                    |
| action_plan         | string     | null: false                    | 
| hobit_id            | integer    | null: false                    | 
| category_id         | integer    | null: false                    |
| hobituation         | string     |                                |
| merit               | string     |                                |
| demerit             | string     |                                |
| user                | references | null: false, foreign_key:true  |


##  Associationbe

belongs_to :user
has_many   :likes
has_many   :comments


##  like  テーブル


| Column          | Type        | Options             |
| --------------- | ----------- | ------------------- |
| user_id         |  integer    |  foreign_key: true  |
| objective_id    |  integer    |  foreign_key: true  |


##  Association
belongs_to :user
belongs_to :objective


##  Comment テーブル

| Column         | Type         | Options             |
|----------------| -------------|---------------------|
| user_id        |  integer     | foreign_key: true   |
| objective_id   |  integer     | foreign_key: true   |
| text           |  string      | null: false         | 

## Association

belongs_to :user
belongs_to :objective




## Aggregates

| Column            | Type        | Options                        |
| ---------------   | ----------- | ------------------------------ |
| result_comment    |  string     | null: false                    |
| ability_id        |  integer    | null: false                    |
| period_id         |  datetime    | null: false                    |
| self_compliment   |  string     |                                |
| ability_point     |  integer    |                                |
| user_id           |  integer    | null: false, foreign_key: true |

 belongs_to :user
 