# let-start-now

# アプリの概要


# URL https://lets-start-now.herokuapp.com/

# 使い方・機能


# 環境




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
 