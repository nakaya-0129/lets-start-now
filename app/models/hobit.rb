class Hobit < ActiveHash::Base
  self.data = [
    {id: 1, name: "--"},
    {id: 2, name: "10~15分"},
    {id: 3, name: "15~30分"},
    {id: 4, name: "30~1時間"},
    {id: 5, name: "1~2時間"},
    {id: 6, name: "3〜5時間"},
    {id: 7, name: "5時間以上"},
  ]

  include ActiveHash::Associations
  belongs_to :objective
end

