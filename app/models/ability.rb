class Ability < ActiveHash::Base
  self.data =[
    { id: 1, name: ' -----以下の項目から選択して下さい---- '},
    { id: 2, name: '知識力'},
    { id: 3, name: '自己管理'},
    { id: 4, name: '想像力'},
    { id: 5, name: '共感力'},
    { id: 6, name: '行動力'}
  ]

  include ActiveHash::Associations
  has_many :aggregates  
end
