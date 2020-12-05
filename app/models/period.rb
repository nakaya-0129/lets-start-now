class Period < ActiveHash::Base
  self.data =[
    { id: 1, name: ' -----対象の期間を選択して下さい---- '},
    { id: 2, name: '三日間'},
    { id: 3, name: '一週間'},
    { id: 4, name: '一ヶ月'},
    { id: 5, name: '三か月間'},
    { id: 6, name: '半年間'},
    { id: 7, name: '一年間'}
  ]

  include ActiveHash::Associations
  has_many :aggregates  
end
