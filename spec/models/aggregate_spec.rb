require 'rails_helper'

RSpec.describe Aggregate, type: :model do
  before do
    @aggregate = FactoryBot.build(:aggregate)
  end

  describe 'ノート記入' do
    it '取り組むテーマが空では保存できない' do
      @aggregate.result_comment = ''
      @aggregate.valid?
      expect(@aggregate.errors.full_messages).to include "取り組むテーマは必須です"
    end

    it '取り組むテーマは20字以上は保存できない' do
      @aggregate.result_comment ='aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
      @aggregate.valid?
      expect(@aggregate.errors.full_messages).to include("取り組むテーマの制限を超えています")
    end

    it '始める日が空では保存できない' do
      @aggregate.start_day = ''
      @aggregate.valid?
      expect(@aggregate.errors.full_messages).to include("始める日は必須です")
    end

    it '期間が未選択では保存できない' do
      @aggregate.period_id = 1
      @aggregate.valid?
      expect(@aggregate.errors.full_messages).to include("期間を選択して下さい")
    end

    it '能力は未選択では保存できない' do
      @aggregate.ability_id = 1
      @aggregate.valid?
      expect(@aggregate.errors.full_messages).to include("能力を選択して下さい")
    end

  end
end
