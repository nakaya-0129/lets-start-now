class Category < ActiveHash::Base
self.data =[
  {id: 1, name: "-------テーマを選択して下さい-------"},
  {id: 2, name: "学習習慣"},
  {id: 3, name: "読書習慣"},
  {id: 4, name: "資格取得"},
  {id: 5, name: "IT/Web関連"},
  {id: 6, name: "スキルアップ"},
  {id: 7, name: "起業/副業/転職"},
  {id: 8, name: "ダイエット"},
  {id: 9, name: "運動習慣"},
  {id: 10, name: "健康管理"},
  {id: 11, name: "その他"}
]

include ActiveHash::Associations
  belongs_to :objective
  
end
