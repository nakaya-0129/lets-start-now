# let-start-now

## テーブル設計


## users テーブル


| Column              | Type   | Options                     |
| ------------------- | ------ | ----------------------------|
| nick_name           | string | null: false                 | 
| email               | string | null: false, unique: true   | 
| encrypted_password  | string | null: false                 | 
| last_name           | string | null: false                 |
| first_name          | string | null: false                 |
| six_id              | integer| null: false                 | 
| birthday            | date   | null: false                 |


##  Association


has_one   :objective 
has_many   :circle


##  objective テーブル


| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| one_day             | string     | null: false                    | 
| one_week            | string     | null: false                    |
| one_month           | string     | null: false                    | 
| three_month         | string     | null: false                    |
| year                | string     | null: false                    | 
| self_actualization  | string     |                     |
| social_contribution | string     |                     |
| future              | string     | null: false                    |
| user                | references | null: false, foreign_key:true  |


##  Associationbe

belongs_to :user
hsa_one    :status


##  status  テーブル


| Column          | Type        | Options                        |
| --------------- | ----------- | ------------------------------ |
| knowledge       |  integer    | null: false                    |
| self_management |  integer    | null: false                    | 
| curiosity       |  integer    | null: false                    |
| imagination     |  integer    | null: false                    |
| sustainability  |  integer    | null: false                    |
| achievement     |  integer    | null: false                    |
| empathy         |  integer    | null: false                    |

##  Association

belongs_to :objective



##  circle テーブル


| Column          | Type        | Options                        |
| --------------- | ----------- | ------------------------------ |
| member_id       | integer     | null: false                    | 
| hobby           | string      | null: false                    | 
| my_fashion      | string      | null: false                    | 
| learning_method | string      | null: false                    | 
| free_comment    | string      |                                |
| phone_number    | string      | null: false                    |
| object          | references  | null: false                    |

##  Association

belongs_to :objective
belongs_to :user


