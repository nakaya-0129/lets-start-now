class Category < ActiveHash::Base
self.data =[
  {id: 1, name: "--"},
  {id: 2, name: "学習"},
  {id: 3, name: "読書"},
  {id: 4, name: "運動"},
  {id: 5, name: "ダイエット"},
  {id: 6, name: "節約"},
  {id: 7, name: "掃除、整理"},
  {id: 8, name: "ストレス解消"},
  {id: 9, name: "趣味、娯楽"},
  {id: 10, name: "仲間作り"}
]

include ActiveHash::Associations
  belongs_to :objective
  
end
