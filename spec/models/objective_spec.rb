require 'rails_helper'

RSpec.describe Objective, type: :model do
  before do
    @objective = FactoryBot.build(:objective)
  end

  describe '目標投稿' do
    it 'ユーザー名が空では投稿できない' do
      @objective.user_name = ''
      @objective.valid?
      expect(@objective.errors.full_messages).to include "ユーザーネームは必須です"
    end

    it 'ユーザー名は10文字以内しか登録できない' do
      @objective.user_name = 'aaaaaaaaaaa'
      @objective.valid?
      expect(@objective.errors.full_messages).to include "ユーザーネームの制限を超えています"
    end

    it '目標設定が空では投稿できない' do
      @objective.one_day = ''
      @objective.valid?
      expect(@objective.errors.full_messages).to include "目標宣言は必須です"
    end
    it '目標設定は20文字以内しか投稿できない' do
      @objective.one_day = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
      @objective.valid?
      expect(@objective.errors.full_messages).to include("目標宣言の制限を超えています")
    end

    it 'アクションプランが空では投稿できない' do
      @objective.action_plan = ''
      @objective.valid?
      expect(@objective.errors.full_messages).to include("アクションプランは必須です")
    end

    it 'テーマが未選択では投稿できない' do
      @objective.category_id = 1
      @objective.valid?
      expect(@objective.errors.full_messages).to include("テーマを選択して下さい")
    end

    it '時間設定が未選択では投稿できない' do
      @objective.hobit_id = 1
      @objective.valid?
      expect(@objective.errors.full_messages).to include("時間設定を選択して下さい")
      
    end

  end
end
